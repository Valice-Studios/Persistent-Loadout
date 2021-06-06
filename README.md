# Persistent-Loadout

Directions to add this to your mission:

1. Copy the `VSKS` folder into your mission folder.

2. Include the following lines in your description.ext file's CfgFunctions class:
```c++
#include "VSKS\CfgFunctions.hpp"
```

2a. If you do not have CfgFunctions already defined in your description.ext, use this instead:
```c++
class CfgFunctions {
	#include "VSKS\CfgFunctions.hpp"
}
```

3. Add it to objects in your mission:

3a. In the editor via an object's init field:
```sqf
this addAction ["<t color='#FF0000'>Save Loadout</t>", { [player, getUnitLoadout player, "whatever you want"] remoteExec ["VSKS_fnc_saveLoadout", clientOwner]; }, nil, 1.5, true, false, "", "true", 8]; this addAction ["<t color='#FF0000'>Load Loadout</t>", { [player, "whatever you want"] remoteExec ["VSKS_fnc_loadLoadout", clientOwner]; }, nil, 1.5, true, false, "", "true", 8];
```

3b. Via script in the init.sqf
```sqf
_key = "whatever you want";
_save = { [player, getUnitLoadout player, _key] remoteExec ["VSKS_fnc_saveLoadout", clientOwner]; };
_load = { [player, _key] remoteExec ["VSKS_fnc_loadLoadout", clientOwner]; };

[<variable-name-of-object>, ["<t color='#FF0000'>Save Loadout</t>", _save, nil, 1.5, true, false, "", "true", 8]] remoteExec ["addAction"];
[<variable-name-of-object>, ["<t color='#FF0000'>Load Loadout</t>", _load, nil, 1.5, true, false, "", "true", 8]] remoteExec ["addAction"];
```