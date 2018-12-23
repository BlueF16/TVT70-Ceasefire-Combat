//array containing vehicles that will have option to spawn AI driver in them
#define VEHS [v1,v2,v3,v4,v5,v6]

//use line below to enable the module for all tracked vehicles in the mission
//#define VEHS call {_vehs = []; {if (typeOf _x isKindOf 'Tank') then {_vehs pushBack _x};} foreach vehicles; _vehs;}
