# About
This is a super light (open source & public) version of Astralic UI Library. Our script, Astralic UI, will use this library for "prototype scripts" (knows as "beta ui"). Unoptimised and temporary scripts meant for limited time events.

Please keep in mind that we may change the aesthetics of it.

# Usage
Load and Create a Interface
```lua
local Lib = loadstring(game:HttpGet("https://astronomic.vercel.app/PrototypeLibrary.lua"))():MakePrototypeLibrary("Astralic Prototype UI")
```
Make a Tab
```lua
local CuteTab = Lib:MakeTab("my little adorable tab", true) -- true to make it open by default (optional)
```
Make a Info Text (argument)
```lua
CuteTab:Info("i love cute cats")
```
Make a Button
```lua
CuteTab:Button("click for a cookie", function()
print("biscuit")
end)
```
Make a Toggle
```lua
CuteTab:Toggle("press me", function(value)
print(value)
end)
```
