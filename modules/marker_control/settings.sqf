//This module is for showing or hiding markers based on what side they belong to.

//ADDMARKER(SIDE, NAME, DELETE_AFTER_START)
//SIDE is the side of the marker, NAME is the name of the marker.
//If you dont want anyone to see the marker use SYSTEM.
//DELETE_AFTER_START set to true will delete marker after briefing

//Example:
//ADDMARKER(west, "start", true);
//ADDMARKER(SYSTEM, "objBravo", false);

{ADDMARKER(west,_x, false)
} forEach ((getMissionLayerEntities "UKR Markers") select 1);

{ADDMARKER(SYSTEM,_x, false)
} forEach ((getMissionLayerEntities "SYSTEM MARKERS") select 1);


{ADDMARKER(east,_x, false)
} forEach ((getMissionLayerEntities "SETUPSEP") select 1);

{ADDMARKER(east,_x, false)
} forEach ((getMissionLayerEntities "SEP Markers") select 1);
m1=["BLUFORPLT1",getMarkerPos "221",west,[ "armor","ifv","armor","inf","reduced","1"],3,1.2,[west],"2 MCP"] call vk_fnc_addMarker;
m2=["BLUFORPLT2",getMarkerPos "224",west,[ "armor","ifv","armor","inf","2"],3,1.2,[west],"2 MCP"] call vk_fnc_addMarker;
m3=["BLUFORPLT3",getMarkerPos "227",west,[ "armor","ifv","armor","inf","3"],3,1.2,[west],"2 MCP"] call vk_fnc_addMarker;
m4=["BLUFORCMPNY1",getMarkerPos "210",west,[ "armor","ifv","armor","inf","1"],4,1.2,[west],"  2 MCб"] call vk_fnc_addMarker;
m5=["BLUFORCMPNY2",getMarkerPos "220",west,[ "armor","HQ","ifv","armor","inf","2"],4,1.2,[west],"  2 MCб"] call vk_fnc_addMarker;
m6=["BLUFORCMPNY3",getMarkerPos "230",west,[ "armor","ifv","armor","inf","3"],4,1.2,[west],"  2 MCб"] call vk_fnc_addMarker;
m7=["2nd Battalion",getMarkerPos "200",west,[ "armor","HQ","ifv","armor","inf","2"],5,1.2,[west]," XIV Mechanized Brigade"] call vk_fnc_addMarker;
m8=["MOLOTOK 551",getMarkerPos "ARTY",west,[ "arty"],1,1.2,[west],"MOLOTOK 551"] call vk_fnc_addMarker;
m9=["ENY AA",getMarkerPos "ENY",east,[ "armor","inf","motor","wheeled"],3,1.2,[west],""] call vk_fnc_addMarker;
m10=["ENY DESTROYED",getMarkerPos "ENYD",east,[ "armor","inf","motor","wheeled","destroyed"],3,1.2,[west],""] call vk_fnc_addMarker;
