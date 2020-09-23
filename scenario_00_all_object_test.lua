-- Name: All object test
-- Description: Every ship, station, and object.
-- Type: Basic

-- Space phenomena
asteroid_1 = Asteroid():
  setPosition(-5000, 5000)
visualasteroid_1 = VisualAsteroid():
  setPosition(-5000, 5000)
blackhole_1 = BlackHole():
  setPosition(-12500, 12500)
nebula_1 = Nebula():
  setPosition(-20000, 20000)
wormhole_1 = WormHole():
  setPosition(-27500, 27500):
  setTargetPosition(0, 0)

-- Stations
smallstation_1 = SpaceStation():
  setTemplate("Small Station"):
  setFaction("Independent"):
  setCallSign("Small Station"):
  setPosition(2500, -2500)
mediumstation_1 = SpaceStation():
  setTemplate("Medium Station"):
  setFaction("Independent"):
  setCallSign("Medium Station"):
  setPosition(5000, -5000)
largestation_1 = SpaceStation():
  setTemplate("Large Station"):
  setFaction("Independent"):
  setCallSign("Large Station"):
  setPosition(7500, -7500)
hugestation_14 = SpaceStation():
  setTemplate("Huge Station"):
  setFaction("Independent"):
  setCallSign("Huge Station"):
  setPosition(10000, -10000)

-- Functional objects
warpjammer_1 = WarpJammer():
  setFaction("Independent"):
  setPosition(2500, 0)
mine_1 = Mine():
  setFaction("Kraylor"):
  setPosition(5000, -2500)
supplydrop_1 = SupplyDrop():
  setFaction("Independent"):
  setPosition(7500, -5000):
  setEnergy(500):
  setWeaponStorage("Homing", 4):
  setWeaponStorage("Nuke", 1):
  setWeaponStorage("Mine", 2):
  setWeaponStorage("EMP", 1)

-- Artifacts
artifact_1 = Artifact():
  setModel("artifact1"):
  setCallSign("artifact1"):
  setPosition(10000,  -7500)
artifact_2 = Artifact():
  setModel("artifact2"):
  setCallSign("artifact2"):
  setPosition(12500, -10000)
artifact_3 = Artifact():
  setModel("artifact3"):
  setCallSign("artifact3"):
  setPosition(15000, -12500)
artifact_4 = Artifact():
  setModel("artifact4"):
  setCallSign("artifact4"):
  setPosition(17500, -15000)
artifact_5 = Artifact():
  setModel("artifact5"):
  setCallSign("artifact5"):
  setPosition(20000, -17500)
artifact_6 = Artifact():
  setModel("artifact6"):
  setCallSign("artifact6"):
  setPosition(22500, -20000)
artifact_7 = Artifact():
  setModel("artifact7"):
  setCallSign("artifact7"):
  setPosition(25000, -22500)
artifact_8 = Artifact():
  setModel("artifact8"):
  setCallSign("artifact8"):
  setPosition(27500, -25000)

-- Ships
-- - Deprecated
advgunship_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Adv. Gunship"):
  setCallSign("Adv. Gunship"):
  setPosition(5000, 0):
  orderIdle():
  setWeaponStorage("Homing", 2)
advstriker_1 = CpuShip():
  setFaction("Exuari"):
  setTemplate("Adv. Striker"):
  setCallSign("Adv. Striker"):
  setPosition(7500, -2500):
  orderIdle()
battlestation_1 = CpuShip():
  setFaction("Ktlitans"):
  setTemplate("Battlestation"):
  setCallSign("Battlestation"):
  setPosition(10000, -5000):
  orderIdle()
blockaderunner_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Blockade Runner"):
  setCallSign("Blockade Runner"):
  setPosition(12500, -7500):
  orderIdle()
cruiser_1 = CpuShip():
  setFaction("Human Navy"):
  setTemplate("Cruiser"):
  setCallSign("Cruiser"):
  setPosition(15000, -10000):
  orderIdle()
dreadnought_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Dreadnought"):
  setCallSign("Dreadnought"):
  setPosition(17500, -12500):
  orderIdle()
fighter_1 = CpuShip():
  setFaction("Ghosts"):
  setTemplate("Fighter"):
  setCallSign("Fighter"):
  setPosition(20000, -15000):
  orderIdle()

-- - Ktlians
ktlitanbreaker_1 = CpuShip():
  setFaction("Ktlitans"):
  setTemplate("Ktlitan Breaker"):
  setCallSign("Ktlitan Breaker"):
  setPosition(7500, 0):
  orderIdle():
  setWeaponStorage("HVLI", 4)
ktlitandestroyer_1 = CpuShip():
  setFaction("Ktlitans"):
  setTemplate("Ktlitan Destroyer"):
  setCallSign("Ktlitan Destroyer"):
  setPosition(10000, -2500):
  orderIdle():
  setWeaponStorage("Homing", 22)
ktlitandrone_1 = CpuShip():
  setFaction("Ktlitans"):
  setTemplate("Ktlitan Drone"):
  setCallSign("Ktlitan Drone"):
  setPosition(12500, -5000):
  orderIdle()
ktlitanfeeder_1 = CpuShip():
  setFaction("Ktlitans"):
  setTemplate("Ktlitan Feeder"):
  setCallSign("Ktlitan Feeder"):
  setPosition(15000, -7500):
  orderIdle()
ktlitanfighter_1 = CpuShip():
  setFaction("Ktlitans"):
  setTemplate("Ktlitan Fighter"):
  setCallSign("Ktlitan Fighter"):
  setPosition(17500, -10000):
  orderIdle()
ktlitanqueen_1 = CpuShip():
  setFaction("Ktlitans"):
  setTemplate("Ktlitan Queen"):
  setCallSign("Ktlitan Queen"):
  setPosition(20000, -12500):
  orderIdle():
  setWeaponStorage("EMP", 3)
ktlitanscout_1 = CpuShip():
  setFaction("Ktlitans"):
  setTemplate("Ktlitan Scout"):
  setCallSign("Ktlitan Scout"):
  setPosition(22500, -15000):
  orderIdle()
ktlitanworker_1 = CpuShip():
  setFaction("Ktlitans"):
  setTemplate("Ktlitan Worker"):
  setCallSign("Ktlitan Worker"):
  setPosition(25000, -17500):
  orderIdle()

-- - Generic
missilecruiser_1 = CpuShip():
  setFaction("Human Navy"):
  setTemplate("Missile Cruiser"):
  setCallSign("Missile Cruiser"):
  setPosition(10000, 0):
  orderIdle():
  setWeaponStorage("Homing", 9)
strikeship_1 = CpuShip():
  setFaction("Human Navy"):
  setTemplate("Strikeship"):
  setCallSign("Strikeship"):
  setPosition(12500, -2500):
  orderIdle()
tug_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Tug"):
  setCallSign("Tug"):
  setPosition(27500, 0):
  orderIdle()
weaponsplatform_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Weapons platform"):
  setCallSign("Weapons platform"):
  setPosition(30000, -2500):
  orderIdle()

-- - Transports
transport1x1_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport1x1"):
  setCallSign("Transport1x1"):
  setPosition(15000, 0):
  orderIdle()
transport1x2_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport1x2"):
  setCallSign("Transport1x2"):
  setPosition(17500, -2500):
  orderIdle()
transport1x3_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport1x3"):
  setCallSign("Transport1x3"):
  setPosition(20000, -5000):
  orderIdle()
transport1x4_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport1x4"):
  setCallSign("Transport1x4"):
  setPosition(22500, -7500):
  orderIdle()
transport1x5_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport1x5"):
  setCallSign("Transport1x5"):
  setPosition(25000, -10000):
  orderIdle()

transport2x1_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport2x1"):
  setCallSign("Transport2x1"):
  setPosition(17500, 0):
  orderIdle()
transport2x2_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport2x2"):
  setCallSign("Transport2x2"):
  setPosition(20000, -2500):
  orderIdle()
transport2x3_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport2x3"):
  setCallSign("Transport2x3"):
  setPosition(22500, -5000):
  orderIdle()
transport2x4_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport2x4"):
  setCallSign("Transport2x4"):
  setPosition(25000, -7500):
  orderIdle()
transport2x5_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport2x5"):
  setCallSign("Transport2x5"):
  setPosition(27500, -10000):
  orderIdle()

transport3x1_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport3x1"):
  setCallSign("Transport3x1"):
  setPosition(20000, 0):
  orderIdle()
transport3x2_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport3x2"):
  setCallSign("Transport3x2"):
  setPosition(22500, -2500):
  orderIdle()
transport3x3_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport3x3"):
  setCallSign("Transport3x3"):
  setPosition(25000, -5000):
  orderIdle()
transport3x4_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport3x4"):
  setCallSign("Transport3x4"):
  setPosition(27500, -7500):
  orderIdle()
transport3x5_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport3x5"):
  setCallSign("Transport3x5"):
  setPosition(30000, -10000):
  orderIdle()

transport4x1_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport4x1"):
  setCallSign("Transport4x1"):
  setPosition(22500, 0):
  orderIdle()
transport4x2_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport4x2"):
  setCallSign("Transport4x2"):
  setPosition(25000, -2500):
  orderIdle()
transport4x3_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport4x3"):
  setCallSign("Transport4x3"):
  setPosition(27500, -5000):
  orderIdle()
transport4x4_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport4x4"):
  setCallSign("Transport4x4"):
  setPosition(30000, -7500):
  orderIdle()
transport4x5_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport4x5"):
  setCallSign("Transport4x5"):
  setPosition(32500, -10000):
  orderIdle()

transport5x1_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport5x1"):
  setCallSign("Transport5x1"):
  setPosition(25000, 0):
  orderIdle()
transport5x2_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport5x2"):
  setCallSign("Transport5x2"):
  setPosition(27500, -2500):
  orderIdle()
transport5x3_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport5x3"):
  setCallSign("Transport5x3"):
  setPosition(30000, -5000):
  orderIdle()
transport5x4_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport5x4"):
  setCallSign("Transport5x4"):
  setPosition(32500, -7500):
  orderIdle()
transport5x5_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Transport5x5"):
  setCallSign("Transport5x5"):
  setPosition(35000, -10000):
  orderIdle()

-- - Freighters
equipmentfreighter1_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Equipment Freighter 1"):
  setCallSign("Equipment Freighter 1"):
  setPosition(2500, 20000):
  orderIdle()
equipmentfreighter2_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Equipment Freighter 2"):
  setCallSign("Equipment Freighter 2"):
  setPosition(5000, 17500):
  orderIdle()
equipmentfreighter3_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Equipment Freighter 3"):
  setCallSign("Equipment Freighter 3"):
  setPosition(7500, 15000):
  orderIdle()
equipmentfreighter4_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Equipment Freighter 4"):
  setCallSign("Equipment Freighter 4"):
  setPosition(10000, 12500):
  orderIdle()
equipmentfreighter5_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Equipment Freighter 5"):
  setCallSign("Equipment Freighter 5"):
  setPosition(12500, 10000):
  orderIdle()
equipmentjumpfreighter3_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Equipment Jump Freighter 3"):
  setCallSign("Equipment Jump Freighter 3"):
  setPosition(15000, 7500):
  orderIdle()
equipmentjumpfreighter4_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Equipment Jump Freighter 4"):
  setCallSign("Equipment Jump Freighter 4"):
  setPosition(17500, 5000):
  orderIdle()
equipmentjumpfreighter5_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Equipment Jump Freighter 5"):
  setCallSign("Equipment Jump Freighter 5"):
  setPosition(20000, 2500):
  orderIdle()

fuelfreighter1_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Fuel Freighter 1"):
  setCallSign("Fuel Freighter 1"):
  setPosition(5000, 20000):
  orderIdle()
fuelfreighter2_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Fuel Freighter 2"):
  setCallSign("Fuel Freighter 2"):
  setPosition(7500, 17500):
  orderIdle()
fuelfreighter3_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Fuel Freighter 3"):
  setCallSign("Fuel Freighter 3"):
  setPosition(10000, 15000):
  orderIdle()
fuelfreighter4_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Fuel Freighter 4"):
  setCallSign("Fuel Freighter 4"):
  setPosition(12500, 12500):
  orderIdle()
fuelfreighter5_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Fuel Freighter 5"):
  setCallSign("Fuel Freighter 5"):
  setPosition(15000, 10000):
  orderIdle()
fueljumpfreighter3_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Fuel Jump Freighter 3"):
  setCallSign("Fuel Jump Freighter 3"):
  setPosition(17500, 7500):
  orderIdle()
fueljumpfreighter4_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Fuel Jump Freighter 4"):
  setCallSign("Fuel Jump Freighter 4"):
  setPosition(20000, 5000):
  orderIdle()
fueljumpfreighter5_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Fuel Jump Freighter 5"):
  setCallSign("Fuel Jump Freighter 5"):
  setPosition(22500, 2500):
  orderIdle()

garbagefreighter1_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Garbage Freighter 1"):
  setCallSign("Garbage Freighter 1"):
  setPosition(7500, 20000):
  orderIdle()
garbagefreighter2_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Garbage Freighter 2"):
  setCallSign("Garbage Freighter 2"):
  setPosition(10000, 17500):
  orderIdle()
garbagefreighter3_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Garbage Freighter 3"):
  setCallSign("Garbage Freighter 3"):
  setPosition(12500, 15000):
  orderIdle()
garbagefreighter4_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Garbage Freighter 4"):
  setCallSign("Garbage Freighter 4"):
  setPosition(15000, 12500):
  orderIdle()
garbagefreighter5_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Garbage Freighter 5"):
  setCallSign("Garbage Freighter 5"):
  setPosition(17500, 10000):
  orderIdle()
garbagejumpfreighter3_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Garbage Jump Freighter 3"):
  setCallSign("Garbage Jump Freighter 3"):
  setPosition(20000, 7500):
  orderIdle()
garbagejumpfreighter4_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Garbage Jump Freighter 4"):
  setCallSign("Garbage Jump Freighter 4"):
  setPosition(22500, 5000):
  orderIdle()
garbagejumpfreighter5_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Garbage Jump Freighter 5"):
  setCallSign("Garbage Jump Freighter 5"):
  setPosition(25000, 2500):
  orderIdle()

goodsfreighter1_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Goods Freighter 1"):
  setCallSign("Goods Freighter 1"):
  setPosition(10000, 20000):
  orderIdle()
goodsfreighter2_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Goods Freighter 2"):
  setCallSign("Goods Freighter 2"):
  setPosition(12500, 17500):
  orderIdle()
goodsfreighter3_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Goods Freighter 3"):
  setCallSign("Goods Freighter 3"):
  setPosition(15000, 15000):
  orderIdle()
goodsfreighter4_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Goods Freighter 4"):
  setCallSign("Goods Freighter 4"):
  setPosition(17500, 12500):
  orderIdle()
goodsfreighter5_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Goods Freighter 5"):
  setCallSign("Goods Freighter 5"):
  setPosition(20000, 10000):
  orderIdle()
goodsjumpfreighter3_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Goods Jump Freighter 3"):
  setCallSign("Goods Jump Freighter 3"):
  setPosition(22500, 7500):
  orderIdle()
goodsjumpfreighter4_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Goods Jump Freighter 4"):
  setCallSign("Goods Jump Freighter 4"):
  setPosition(25000, 5000):
  orderIdle()
goodsjumpfreighter5_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Goods Jump Freighter 5"):
  setCallSign("Goods Jump Freighter 5"):
  setPosition(27500, 2500):
  orderIdle()

personnelfreighter1_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Personnel Freighter 1"):
  setCallSign("Personnel Freighter 1"):
  setPosition(12500, 20000):
  orderIdle()
personnelfreighter2_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Personnel Freighter 2"):
  setCallSign("Personnel Freighter 2"):
  setPosition(15000, 17500):
  orderIdle()
personnelfreighter3_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Personnel Freighter 3"):
  setCallSign("Personnel Freighter 3"):
  setPosition(17500, 15000):
  orderIdle()
personnelfreighter4_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Personnel Freighter 4"):
  setCallSign("Personnel Freighter 4"):
  setPosition(20000, 12500):
  orderIdle()
personnelfreighter5_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Personnel Freighter 5"):
  setCallSign("Personnel Freighter 5"):
  setPosition(22500, 10000):
  orderIdle()
personneljumpfreighter3_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Personnel Jump Freighter 3"):
  setCallSign("Personnel Jump Freighter 3"):
  setPosition(25000, 7500):
  orderIdle()
personneljumpfreighter4_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Personnel Jump Freighter 4"):
  setCallSign("Personnel Jump Freighter 4"):
  setPosition(27500, 5000):
  orderIdle()
personneljumpfreighter5_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Personnel Jump Freighter 5"):
  setCallSign("Personnel Jump Freighter 5"):
  setPosition(30000, 2500):
  orderIdle()


-- - Carriers
jumpcarrier_1 = CpuShip():
  setFaction("Independent"):
  setTemplate("Jump Carrier"):
  setCallSign("Jump Carrier"):
  setPosition(32500, 0):
  orderIdle()

-- - Corvettes
atlantisx23_1 = CpuShip():
  setFaction("Ghosts"):
  setTemplate("Atlantis X23"):
  setCallSign("Atlantis X23"):
  setPosition(0, 20000):
  orderIdle():
  setWeaponStorage("Homing", 0)
defenseplatform_1 = CpuShip():
  setFaction("Ghosts"):
  setTemplate("Defense platform"):
  setCallSign("Defense platform"):
  setPosition(2500, 17500):
  orderIdle()
starhammerii_1 = CpuShip():
  setFaction("Ghosts"):
  setTemplate("Starhammer II"):
  setCallSign("Starhammer II"):
  setPosition(5000, 15000):
  orderIdle():
  setWeaponStorage("Homing", 3):
  setWeaponStorage("EMP", 1)
-- Added in https://github.com/daid/EmptyEpsilon/commit/4f804d38aee561cba2c99ab2d850079cf7846513#diff-3dafbf2226c7ec62d5fb4b2fbd8bbe3e
crucible_1 = CpuShip():
  setFaction("Ghosts"):
  setTemplate("Crucible"):
  setCallSign("Crucible"):
  setPosition(2500, 12500):
  orderIdle():
  setWeaponStorage("HVLI", 24):
  setWeaponStorage("Homing", 8):
  setWeaponStorage("EMP", 6):
  setWeaponStorage("Nuke", 4):
  setWeaponStorage("Mine", 6)
maverick_1 = CpuShip():
  setFaction("Ghosts"):
  setTemplate("Maverick"):
  setCallSign("Maverick"):
  setPosition(0, 10000):
  orderIdle():
  setWeaponStorage("HVLI", 10):
  setWeaponStorage("Homing", 6):
  setWeaponStorage("EMP", 4):
  setWeaponStorage("Nuke", 2):
  setWeaponStorage("Mine", 2)

-- - Starfighters
addermk4_1 = CpuShip():
  setFaction("Exuari"):
  setTemplate("Adder MK4"):
  setCallSign("Adder MK4"):
  setPosition(0, 40000):
  orderIdle():
  setWeaponStorage("HVLI", 1)
addermk5_1 = CpuShip():
  setFaction("Exuari"):
  setTemplate("Adder MK5"):
  setCallSign("Adder MK5"):
  setPosition(2500, 37500):
  orderIdle():
  setWeaponStorage("HVLI", 3)
addermk6_1 = CpuShip():
  setFaction("Exuari"):
  setTemplate("Adder MK6"):
  setCallSign("Adder MK6"):
  setPosition(5000, 35000):
  orderIdle():
  setWeaponStorage("HVLI", 7)
mt52hornet_1 = CpuShip():
  setFaction("Exuari"):
  setTemplate("MT52 Hornet"):
  setCallSign("MT52 Hornet"):
  setPosition(7500, 32500):
  orderIdle()
mu52hornet_1 = CpuShip():
  setFaction("Exuari"):
  setTemplate("MU52 Hornet"):
  setCallSign("MU52 Hornet"):
  setPosition(10000, 30000):
  orderIdle()
wxlindworm_1 = CpuShip():
  setFaction("Exuari"):
  setTemplate("WX-Lindworm"):
  setCallSign("WX-Lindworm"):
  setPosition(12500, 27500):
  orderIdle():
  setWeaponStorage("Homing", 0):
  setWeaponStorage("HVLI", 4)
-- Added in https://github.com/daid/EmptyEpsilon/commit/93893b81e67d7279e711481462d9807946ebd975
addermk3_1 = CpuShip():
  setFaction("TSN"):
  setTemplate("Adder MK3"):
  setCallSign("Adder MK3"):
  setPosition(15000, 30000):
  orderIdle()
addermk7_1 = CpuShip():
  setFaction("TSN"):
  setTemplate("Adder MK7"):
  setCallSign("Adder MK7"):
  setPosition(17500, 32500):
  orderIdle()
addermk8_1 = CpuShip():
  setFaction("TSN"):
  setTemplate("Adder MK8"):
  setCallSign("Adder MK8"):
  setPosition(20000, 35000):
  orderIdle()
addermk9_1 = CpuShip():
  setFaction("TSN"):
  setTemplate("Adder MK9"):
  setCallSign("Adder MK9"):
  setPosition(22500, 37500):
  orderIdle()

-- - Frigates
flavia_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Flavia"):
  setCallSign("Flavia"):
  setPosition(2500, 40000):
  orderIdle()
flaviafalcon_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Flavia Falcon"):
  setCallSign("Flavia Falcon"):
  setPosition(5000, 37500):
  orderIdle()
hathcock_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Hathcock"):
  setCallSign("Hathcock"):
  setPosition(35000, 7500):
  orderIdle()
nirvanar5_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Nirvana R5"):
  setCallSign("Nirvana R5"):
  setPosition(7500, 35000):
  orderIdle()
nirvanar5a_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Nirvana R5A"):
  setCallSign("Nirvana R5A"):
  setPosition(10000, 32500):
  orderIdle()
phobosm3_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Phobos M3"):
  setCallSign("Phobos M3"):
  setPosition(12500, 30000):
  orderIdle():
  setWeaponStorage("Homing", 4)
phobost3_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Phobos T3"):
  setCallSign("Phobos T3"):
  setPosition(15000, 27500):
  orderIdle():
  setWeaponStorage("Homing", 4)
piranhaf8_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Piranha F8"):
  setCallSign("Piranha F8"):
  setPosition(17500, 25000):
  orderIdle():
  setWeaponStorage("Homing", 4):
  setWeaponStorage("HVLI", 8)
piranhaf12_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Piranha F12"):
  setCallSign("Piranha F12"):
  setPosition(20000, 22500):
  orderIdle():
  setWeaponStorage("Homing", 4):
  setWeaponStorage("HVLI", 16)
piranhaf12m_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Piranha F12.M"):
  setCallSign("Piranha F12.M"):
  setPosition(22500, 20000):
  orderIdle():
  setWeaponStorage("Nuke", 0):
  setWeaponStorage("HVLI", 6)
repulse_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Repulse"):
  setCallSign("Repulse"):
  setPosition(37500, 5000):
  orderIdle()
ranusu_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Ranus U"):
  setCallSign("Ranus U"):
  setPosition(25000, 17500):
  orderIdle():
  setWeaponStorage("Homing", 4):
  setWeaponStorage("Nuke", 1)
stalkerq7_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Stalker Q7"):
  setCallSign("Stalker Q7"):
  setPosition(27500, 15000):
  orderIdle()
stalkerr7_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Stalker R7"):
  setCallSign("Stalker R7"):
  setPosition(30000, 12500):
  orderIdle()
storm_1 = CpuShip():
  setFaction("Arlenians"):
  setTemplate("Storm"):
  setCallSign("Storm"):
  setPosition(32500, 10000):
  orderIdle()
-- New in https://github.com/daid/EmptyEpsilon/pull/1069
elarap2_1 = CpuShip():
  setFaction("TSN"):
  setTemplate("Elara P2"):
  setCallSign("Elara P2"):
  setPosition(35000, 7500):
  orderIdle()
nirvanar3_1 = CpuShip():
  setFaction("USN"):
  setTemplate("Nirvana R3"):
  setCallSign("Nirvana R3"):
  setPosition(37500, 5000):
  orderIdle()
stalkerq5_1 = CpuShip():
  setFaction("CUF"):
  setTemplate("Stalker Q5"):
  setCallSign("Stalker Q5"):
  setPosition(40000, 2500):
  orderIdle()
stalkerr5_1 = CpuShip():
  setFaction("CUF"):
  setTemplate("Stalker R5"):
  setCallSign("Stalker R5"):
  setPosition(42500, 0):
  orderIdle()
fiendg3_1 = CpuShip():
  setFaction("TSN"):
  setTemplate("Fiend G3"):
  setCallSign("Fiend G3"):
  setPosition(45000, -2500):
  orderIdle()
fiendg4_1 = CpuShip():
  setFaction("TSN"):
  setTemplate("Fiend G4"):
  setCallSign("Fiend G4"):
  setPosition(47500, -5000):
  orderIdle()
fiendg5_1 = CpuShip():
  setFaction("TSN"):
  setTemplate("Fiend G5"):
  setCallSign("Fiend G5"):
  setPosition(50000, -7500):
  orderIdle()
fiendg6_1 = CpuShip():
  setFaction("TSN"):
  setTemplate("Fiend G6"):
  setCallSign("Fiend G6"):
  setPosition(52500, -10000):
  orderIdle()

-- - Dreadnoughts
odin_1 = CpuShip():
  setFaction("Kraylor"):
  setTemplate("Odin"):
  setCallSign("Odin"):
  setPosition(12500, -12500):
  orderIdle():
  setWeaponStorage("Homing", 984)

-- Unused models
adlerlongrangescoutgreen_1 = Artifact():
  setModel("AdlerLongRangeScoutGreen"):
  setCallSign("AdlerLongRangeScoutGreen"):
  setPosition(-2500, -2500)
adlerlongrangescoutgrey_1 = Artifact():
  setModel("AdlerLongRangeScoutGrey"):
  setCallSign("AdlerLongRangeScoutGrey"):
  setPosition(-5000, -5000)
adlerlongrangescoutwhite_1 = Artifact():
  setModel("AdlerLongRangeScoutWhite"):
  setCallSign("AdlerLongRangeScoutWhite"):
  setPosition(-7500, -7500)
atlasheavyfighterblue_1 = Artifact():
  setModel("AtlasHeavyFighterBlue"):
  setCallSign("AtlasHeavyFighterBlue"):
  setPosition(-10000, -10000)
atlasheavyfightergreen_1 = Artifact():
  setModel("AtlasHeavyFighterGreen"):
  setCallSign("AtlasHeavyFighterGreen"):
  setPosition(-12500, -12500)
atlasheavyfightergrey_1 = Artifact():
  setModel("AtlasHeavyFighterGrey"):
  setCallSign("AtlasHeavyFighterGrey"):
  setPosition(-15000, -15000)
atlasheavyfighterwhite_1 = Artifact():
  setModel("AtlasHeavyFighterWhite"):
  setCallSign("AtlasHeavyFighterWhite"):
  setPosition(-17500, -17500)
heavycorvetteblue_1 = Artifact():
  setModel("HeavyCorvetteBlue"):
  setCallSign("HeavyCorvetteBlue"):
  setPosition(-20000, -20000)
heavycorvettegreen_1 = Artifact():
  setModel("HeavyCorvetteGreen"):
  setCallSign("HeavyCorvetteGreen"):
  setPosition(-22500, -22500)
heavycorvettegrey_1 = Artifact():
  setModel("HeavyCorvetteGrey"):
  setCallSign("HeavyCorvetteGrey"):
  setPosition(-25000, -25000)
heavycorvettewhite_1 = Artifact():
  setModel("HeavyCorvetteWhite"):
  setCallSign("HeavyCorvetteWhite"):
  setPosition(-27500, -27500)
heavycorvetteyellow_1 = Artifact():
  setModel("HeavyCorvetteYellow"):
  setCallSign("HeavyCorvetteYellow"):
  setPosition(-30000, -30000)
lasercorvetteblue_1 = Artifact():
  setModel("LaserCorvetteBlue"):
  setCallSign("LaserCorvetteBlue"):
  setPosition(-32500, -32500)
lasercorvettegreen_1 = Artifact():
  setModel("LaserCorvetteGreen"):
  setCallSign("LaserCorvetteGreen"):
  setPosition(-35000, -35000)
lasercorvettegrey_1 = Artifact():
  setModel("LaserCorvetteGrey"):
  setCallSign("LaserCorvetteGrey"):
  setPosition(-37500, -37500)
lasercorvettered_1 = Artifact():
  setModel("LaserCorvetteRed"):
  setCallSign("LaserCorvetteRed"):
  setPosition(-40000, -40000)

lasercorvettewhite_1 = Artifact():
  setModel("LaserCorvetteWhite"):
  setCallSign("LaserCorvetteWhite"):
  setPosition(-2500, 0)
lasercorvetteyellow_1 = Artifact():
  setModel("LaserCorvetteYellow"):
  setCallSign("LaserCorvetteYellow"):
  setPosition(-5000, -2500)
lightcorvetteblue_1 = Artifact():
  setModel("LightCorvetteBlue"):
  setCallSign("LightCorvetteBlue"):
  setPosition(-7500, -5000)
lightcorvettegreen_1 = Artifact():
  setModel("LightCorvetteGreen"):
  setCallSign("LightCorvetteGreen"):
  setPosition(-10000, -7500)
lightcorvettered_1 = Artifact():
  setModel("LightCorvetteRed"):
  setCallSign("LightCorvetteRed"):
  setPosition(-12500, -10000)
lightcorvettewhite_1 = Artifact():
  setModel("LightCorvetteWhite"):
  setCallSign("LightCorvetteWhite"):
  setPosition(-15000, -12500)
lightcorvetteyellow_1 = Artifact():
  setModel("LightCorvetteYellow"):
  setCallSign("LightCorvetteYellow"):
  setPosition(-17500, -15000)
lindwurmfighterblue_1 = Artifact():
  setModel("LindwurmFighterBlue"):
  setCallSign("LindwurmFighterBlue"):
  setPosition(-20000, -17500)
lindwurmfightergreen_1 = Artifact():
  setModel("LindwurmFighterGreen"):
  setCallSign("LindwurmFighterGreen"):
  setPosition(-22500, -20000)
lindwurmfightergrey_1 = Artifact():
  setModel("LindwurmFighterGrey"):
  setCallSign("LindwurmFighterGrey"):
  setPosition(-25000, -22500)
lindwurmfighterred_1 = Artifact():
  setModel("LindwurmFighterRed"):
  setCallSign("LindwurmFighterRed"):
  setPosition(-27500, -25000)
lindwurmfighterwhite_1 = Artifact():
  setModel("LindwurmFighterWhite"):
  setCallSign("LindwurmFighterWhite"):
  setPosition(-30000, -27500)
minelayercorvetteblue_1 = Artifact():
  setModel("MineLayerCorvetteBlue"):
  setCallSign("MineLayerCorvetteBlue"):
  setPosition(-32500, -30000)
minelayercorvettegreen_1 = Artifact():
  setModel("MineLayerCorvetteGreen"):
  setCallSign("MineLayerCorvetteGreen"):
  setPosition(-35000, -32500)
minelayercorvettegrey_1 = Artifact():
  setModel("MineLayerCorvetteGrey"):
  setCallSign("MineLayerCorvetteGrey"):
  setPosition(-37500, -35000)
minelayercorvettered_1 = Artifact():
  setModel("MineLayerCorvetteRed"):
  setCallSign("MineLayerCorvetteRed"):
  setPosition(-40000, -37500)
minelayercorvettewhite_1 = Artifact():
  setModel("MineLayerCorvetteWhite"):
  setCallSign("MineLayerCorvetteWhite"):
  setPosition(-42500, -40000)

minelayercorvetteyellow_1 = Artifact():
  setModel("MineLayerCorvetteYellow"):
  setCallSign("MineLayerCorvetteYellow"):
  setPosition(-5000, 0)
missilecorvetteblue_1 = Artifact():
  setModel("MissileCorvetteBlue"):
  setCallSign("MissileCorvetteBlue"):
  setPosition(-7500, -2500)
missilecorvettegrey_1 = Artifact():
  setModel("MissileCorvetteGrey"):
  setCallSign("MissileCorvetteGrey"):
  setPosition(-10000, -5000)
missilecorvettered_1 = Artifact():
  setModel("MissileCorvetteRed"):
  setCallSign("MissileCorvetteRed"):
  setPosition(-12500, -7500)
missilecorvettewhite_1 = Artifact():
  setModel("MissileCorvetteWhite"):
  setCallSign("MissileCorvetteWhite"):
  setPosition(-15000, -10000)
missilecorvetteyellow_1 = Artifact():
  setModel("MissileCorvetteYellow"):
  setCallSign("MissileCorvetteYellow"):
  setPosition(-17500, -12500)
multiguncorvetteblue_1 = Artifact():
  setModel("MultiGunCorvetteBlue"):
  setCallSign("MultiGunCorvetteBlue"):
  setPosition(-20000, -15000)
multiguncorvettegreen_1 = Artifact():
  setModel("MultiGunCorvetteGreen"):
  setCallSign("MultiGunCorvetteGreen"):
  setPosition(-22500, -17500)
multiguncorvettegrey_1 = Artifact():
  setModel("MultiGunCorvetteGrey"):
  setCallSign("MultiGunCorvetteGrey"):
  setPosition(-25000, -20000)
multiguncorvettered_1 = Artifact():
  setModel("MultiGunCorvetteRed"):
  setCallSign("MultiGunCorvetteRed"):
  setPosition(-27500, -22500)
multiguncorvettewhite_1 = Artifact():
  setModel("MultiGunCorvetteWhite"):
  setCallSign("MultiGunCorvetteWhite"):
  setPosition(-30000, -25000)
multiguncorvetteyellow_1 = Artifact():
  setModel("MultiGunCorvetteYellow"):
  setCallSign("MultiGunCorvetteYellow"):
  setPosition(-32500, -27500)
sensorbuoymki_1 = Artifact():
  setModel("SensorBuoyMKI"):
  setCallSign("SensorBuoyMKI"):
  setPosition(-35000, -30000)
sensorbuoymkii_1 = Artifact():
  setModel("SensorBuoyMKII"):
  setCallSign("SensorBuoyMKII"):
  setPosition(-37500, -32500)
sensorbuoymkiii_1 = Artifact():
  setModel("SensorBuoyMKIII"):
  setCallSign("SensorBuoyMKIII"):
  setPosition(-40000, -35000)
wespescoutblue_1 = Artifact():
  setModel("WespeScoutBlue"):
  setCallSign("WespeScoutBlue"):
  setPosition(-42500, -37500)
wespescoutgreen_1 = Artifact():
  setModel("WespeScoutGreen"):
  setCallSign("WespeScoutGreen"):
  setPosition(-45000, -40000)

wespescoutgrey_1 = Artifact():
  setModel("WespeScoutGrey"):
  setCallSign("WespeScoutGrey"):
  setPosition(-7500, 0)
wespescoutwhite_1 = Artifact():
  setModel("WespeScoutWhite"):
  setCallSign("WespeScoutWhite"):
  setPosition(-10000, -2500)
ammo_box_1 = Artifact():
  setModel("ammo_box"):
  setCallSign("ammo_box"):
  setPosition(-12500, -5000)
battleship_destroyer_2_upgraded_1 = Artifact():
  setModel("battleship_destroyer_2_upgraded"):
  setCallSign("battleship_destroyer_2_upgraded"):
  setPosition(-15000, -7500)
shield_generator_1 = Artifact():
  setModel("shield_generator"):
  setCallSign("shield_generator"):
  setPosition(-17500, -10000)
small_frigate_1_1 = Artifact():
  setModel("small_frigate_1"):
  setCallSign("small_frigate_1"):
  setPosition(-20000, -12500)
small_frigate_2_1 = Artifact():
  setModel("small_frigate_2"):
  setCallSign("small_frigate_2"):
  setPosition(-22500, -15000)
space_frigate_6_1 = Artifact():
  setModel("space_frigate_6"):
  setCallSign("space_frigate_6"):
  setPosition(-25000, -17500)
