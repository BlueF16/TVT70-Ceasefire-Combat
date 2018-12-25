if (isServer) then {
[] spawn {
  {_x setVehicleLock "UNLOCKED"} forEach RespawnVehicles;
  sleep 30;
  {_x hideObjectGlobal true;
              } forEach FW_RespawnPenGateEast;

  sleep 6000;
  FW_RespawnPenGateEast hideObjectGlobal false;
  blyat=1;
  publicVariable blyat;
};
};
