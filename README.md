# Holo api

## Description
Api pour les hologrammes du mod minecraft open computer

## Avertissement
L'api n'est toujours pas tester car je n'est pas accès mon pc ayant le mod en question

## Utilisation
### Pastebin
* pas encore sur pastebin

### Importation
* avec holo_api.lua dans le même dossier
```lua
local holo = requrie("holo_api")
```

### Exemple
```lua
local comp = require("component")
local holo_api = require("holo_api")
local holo = comp.hologram

holo_api.setHolo(holo)

holo_api.setColor(1)
holo_api.print(1, 1, 1, "salut")

holo_api.setColor(2)
holo_api.drawRect(10, 10, 10, 5, 3, 2)

holo_api.setColor(3)
holo_api.draw(23, 11, 12, holo_api.bite)
```
