# FiveM Autopilot [DISCONTINUED]
A simple autopilot Lua class for fiveM planes
<h1>Installation</h1>

<h2>As file in your project<h2>

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

<h2>As external resource<h2>
   
   <h3>1. Download the latest release</h3>
   1.Go to the "releases"-tab
   2.Download the latest release
   
   <h3>2. Install to your server</h3>
   1. Unzip the downloaded file
   2. Copy the folder contained in the .zip-file to your fivem-server's "rescources"-folder
   3. Add `start autopilot` to your server.cfg
   
   <h4>3. Add to your resource.lua file<h/4>
   1. open your project
   2. open your __resource.lua
   3. Add the following lines:
   
   ```lua
   client_scripts {
    "@autopilot/autopilot.lua",
    }
```
   

<h1>Example</h1>

Enable:

```lua
autopilot:activateAutopilot(GetPlayerPed(), GetVehiclePedIsIn(GetPlayerPed()), 2000, 1573, 2000, 250, true, GetEntityModel(GetVehiclePedIsIn(GetPlayerPed())))
```

Disable:

```lua
autopilot:deactivateAutopilot(GetPlayerPed())
```
