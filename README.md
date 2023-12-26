# About
This is a super light (open source & public) version of Astralic UI Library. Our script, Astralic UI, will use this library for "prototype scripts" (knows as "beta ui"). Unoptimised and temporary scripts meant for limited time events.

Always meant for mobile

Please keep in mind that we may change the aesthetics of it.

![](https://github.com/Astralic62/AstralicPrototypeUI/assets/140242928/dc287eb7-18ee-469a-96f8-79fff471f866)
# Usage
Load and Create a Interface
```lua
local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Astralic62/AstralicPrototypeUI/main/PrototypeLibrary.lua"))():MakePrototypeLibrary("Astralic Prototype UI")
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
