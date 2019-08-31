# fivem-autopilot
A simple autopilot Lua class for fiveM planes
<h1>Installation</h1>

<h3>1. Add to your project</h3>
   Just copy the autopilot.lua to your projects folder

<h3>2. Add lua-file to your rescources</h3>
   Add the following line to your __rescource.lua:
  
  ```lua
client_scripts {'autopilot.lua',}
```
  
<h3>3. Call functions</h3>
   Enable:
   
   ```lua
   autopilot:activateAutopilot(pilot, plane, x, y, z, speed, autospeed, model)
   ```
   `pilot` is the Pilots Player Entity, which you can get with `GetPlayerPed()`
   
   `plane` is the Planes Entity, which you can get with `GetVehiclePedIsIn(GetPlayerPed())`
   
   `x` is the destinations x-coordinate
   
   `y` is the destinations y-coordinate
   
   `z` is the altitude
   
   `speed` is the planes airspeed
   
   `autospeed` is a boolean value(`true`/`false`), which is for enabling or disabling AutomaticThrustControl, which reduces the propability of being too slow
   
   `model` is the planes model name, which you can get with `GetEntityModel(GetVehiclePedIsIn(GetPlayerPed()))`
   
   Disable:
   
   ```lua
   autopilot:deactivateAutopilot(pilot)
   ```
`pilot` is the Pilots Player Entity, which you can get with `GetPlayerPed()`

<h1>Example</h1>

Enable:

```lua
autopilot:activateAutopilot(GetPlayerPed(), GetVehiclePedIsIn(GetPlayerPed()), 2000, 1573, 2000, 250, true, GetEntityModel(GetVehiclePedIsIn(GetPlayerPed())))
```

Disable:

```lua
autopilot:deactivateAutopilot(GetPlayerPed())
```
