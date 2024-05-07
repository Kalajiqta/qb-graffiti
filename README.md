# FiveM QBCore Graffiti Script
This is a marking script for browning on buildings walls and such. There is an option that is for gangs where they can mark their territories!

## Preview
https://streamable.com/g4954a

## Discord
https://discord.gg/sp3cgCy4Ay

## Instalation
+ qb-core/shared/items.lua ->
```lua
    -- Graffitis
    ["spraycan"]                        = {["name"] = "spraycan",                          ["label"] = "Spray Can",                ["weight"] = 1000,          ["type"] = "item",         ["image"] = "spraycan.png",                ["unique"] = true,          ["useable"] = true,     ["shouldClose"] = true,       ["combinable"] = nil,   ["description"] = "Spray Can"},
    ["sprayremover"]                    = {["name"] = "sprayremover",                      ["label"] = "Spray Remover",            ["weight"] = 100,           ["type"] = "item",         ["image"] = "sprayremover.png",                ["unique"] = true,          ["useable"] = true,     ["shouldClose"] = true,       ["combinable"] = nil,   ["description"] = "Spray Remover"},

```

+ OLD qb-inventory/html/js -> around line 500
```js
    } else if (itemData.name == "spraycan") {
          $(".item-info-title").html("<p>" + itemData.label + "</p>");
          $(".item-info-description").html("<p><strong>Spray: </strong><span>" + itemData.info.name + "</span></p>");
```

+ NEW qb-inventory/html/js -> around line 390
```js
        case "spraycan":
            return `<p><strong>Spray: </strong><span>${itemData.info.name}</span></p>`;
```
+ Add graffitis.sql to your database

## Props
Take the spray-props folder and (In this script) put it under the other scripts

## Images
![spraycan](https://github.com/Kalajiqta/qb-graffiti/blob/main/images/spraycan.png?raw=true)
![sprayremover](https://github.com/Kalajiqta/qb-graffiti/blob/main/images/sprayremover.png?raw=true)
+ qb-inventory/html/images

## Dependencies
+ [qb-core](https://github.com/qbcore-framework/qb-core)
+ [qb-menu](https://github.com/qbcore-framework/qb-menu)
+ [qb-inventory](https://github.com/qbcore-framework/qb-inventory)
+ [oxmysql](https://github.com/overextended/oxmysql)

## License
Copyright (c) 2024 Matrix Development

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
