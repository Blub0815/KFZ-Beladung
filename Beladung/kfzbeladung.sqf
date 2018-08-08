/***
KFZ Beladungsscripte Überarbeitet (nichts geändert nur hinzugefügt und Angepasst)

Version 3
23.07.2018

Warum S4_Fnc?
Sollten in Zukunft ähnliche Funktionen eventuell erstellt werden, kommt es nicht zu Verwirrungen und Wir sind halt eins :D
***/
S4_Westen = [
  "BWA3_Vest_Tropen",
  "BWA3_Vest_Rifleman1_Tropen",
  "BWA3_Vest_Autorifleman_Tropen",
  "BWA3_Vest_Grenadier_Tropen",
  "BWA3_Vest_Medic_Tropen",
  "BWA3_Vest_Marksman_Tropen",
  "BWA3_Vest_Leader_Tropen",
  "BWA3_Item_Vest_JPC_Rifleman_Tropen",
  "BWA3_Item_Vest_JPC_Leader_Tropen",
  "BWA3_Item_Vest_JPC_Radioman_Tropen"
];


S4_fnc_kfzbeladung_entladen = {
  systemChat "Fahrzeug wird entladen...";
    clearItemCargoGlobal Vehicle Player;
    clearMagazineCargoGlobal Vehicle Player;
    clearWeaponCargoGlobal Vehicle Player;
    clearbackpackcargoglobal Vehicle Player;
    sleep 4;
  systemChat "Fahrzeug entladen";
};

S4_fnc_kfzbeladung_Standart = {
  systemChat "Standartbeladung";
    Vehicle Player addweaponcargoglobal ['BWA3_Pzf3_Loaded',2];
    If (vest player in S4_Westen ) then {
    Vehicle Player addBackpackCargoGlobal ["BWA3_Kitbag_Tropen_Medic", 2];
      {
        _x addItemCargoGlobal ["ACE_packingBandage", 20];
        _x addItemCargoGlobal ["ACE_fieldDressing", 10];
        _x addItemCargoGlobal ["ACE_quikclot", 35];
        _x addItemCargoGlobal ["ACE_elasticBandage", 8];
        _x addItemCargoGlobal ["ACE_morphine", 30];
        _x addItemCargoGlobal ["ACE_epinephrine", 18];
        _x addItemCargoGlobal ["ACE_bloodIV_250", 6];
        _x addItemCargoGlobal ["ACE_bloodIV_500", 5];
        _x addItemCargoGlobal ["ACE_bloodIV", 5];
      } forEach everyBackpack Vehicle Player;
    } else {
      Vehicle Player addBackpackCargoGlobal ["BWA3_Kitbag_Fleck_Medic", 2];
        {
            _x addItemCargoGlobal ["ACE_packingBandage", 20];
            _x addItemCargoGlobal ["ACE_fieldDressing", 10];
            _x addItemCargoGlobal ["ACE_quikclot", 35];
            _x addItemCargoGlobal ["ACE_elasticBandage", 8];
            _x addItemCargoGlobal ["ACE_morphine", 30];
            _x addItemCargoGlobal ["ACE_epinephrine", 18];
            _x addItemCargoGlobal ["ACE_bloodIV_250", 6];
            _x addItemCargoGlobal ["ACE_bloodIV_500", 5];
            _x addItemCargoGlobal ["ACE_bloodIV", 5];
      } forEach everyBackpack Vehicle Player;
    };
    Vehicle player addmagazinecargoglobal ['hlc_100Rnd_762x51_M_MG3',8]; //MG3
    Vehicle player addmagazinecargoglobal ['BWA3_200Rnd_556x45',8]; //MG4
    Vehicle player addmagazinecargoglobal ['BWA3_30Rnd_556x45_G36_AP',30];// G36, G38
    Vehicle player addmagazinecargoglobal ['BWA3_10Rnd_762x51_G28_AP',10]; //G28
    //vehicle player addmagazinecargoglobal ['hlc_5rnd_300WM_mk248_AWM',10]; // G 22
    Vehicle player addItemCargoGlobal ["Medikit", 1];
    Vehicle player addItemCargoGlobal ["Toolkit", 1];
    Vehicle player addItemCargoGlobal ["ACE_wirecutter", 1];
    Vehicle player addItemCargoGlobal ["ACE_EntrenchingTool", 2];
  sleep 2;
  systemChat "Fahrzeug beladen";
};

S4_fnc_kfzbeladung_schweregruppe = {
  systemChat "Lade schwere Gruppe...";
  If (vest player in S4_Westen ) then {
  Vehicle Player addBackpackCargoGlobal ["BWA3_Kitbag_Tropen_Medic", 2];
    {
      _x addItemCargoGlobal ["ACE_packingBandage", 20];
      _x addItemCargoGlobal ["ACE_fieldDressing", 10];
      _x addItemCargoGlobal ["ACE_quikclot", 35];
      _x addItemCargoGlobal ["ACE_elasticBandage", 8];
      _x addItemCargoGlobal ["ACE_morphine", 30];
      _x addItemCargoGlobal ["ACE_epinephrine", 18];
      _x addItemCargoGlobal ["ACE_bloodIV_250", 6];
      _x addItemCargoGlobal ["ACE_bloodIV_500", 5];
      _x addItemCargoGlobal ["ACE_bloodIV", 5];
    } forEach everyBackpack Vehicle Player;
  } else {
    Vehicle Player addBackpackCargoGlobal ["BWA3_Kitbag_Fleck_Medic", 2];
      {
          _x addItemCargoGlobal ["ACE_packingBandage", 20];
          _x addItemCargoGlobal ["ACE_fieldDressing", 10];
          _x addItemCargoGlobal ["ACE_quikclot", 35];
          _x addItemCargoGlobal ["ACE_elasticBandage", 8];
          _x addItemCargoGlobal ["ACE_morphine", 30];
          _x addItemCargoGlobal ["ACE_epinephrine", 18];
          _x addItemCargoGlobal ["ACE_bloodIV_250", 6];
          _x addItemCargoGlobal ["ACE_bloodIV_500", 5];
          _x addItemCargoGlobal ["ACE_bloodIV", 5];
    } forEach everyBackpack Vehicle Player;
  };
    vehicle player addbackpackcargoglobal ['B_AT_01_weapon_F',2];
  	vehicle player addbackpackcargoglobal ['B_HMG_01_support_F',1];
  	vehicle player addbackpackcargoglobal ['B_HMG_01_support_high_F',1];
    vehicle player addweaponcargoglobal ['BWA3_Pzf3_Loaded',2];
    Vehicle player addmagazinecargoglobal ['hlc_100Rnd_762x51_M_MG3',8]; //MG3
    Vehicle player addmagazinecargoglobal ['BWA3_200Rnd_556x45',8]; //MG4
    Vehicle player addmagazinecargoglobal ['BWA3_30Rnd_556x45_G36_AP',30];// G36, G38
    Vehicle player addmagazinecargoglobal ['BWA3_10Rnd_762x51_G28_AP',10]; //G28
    //Vehicle Player addmagazinecargoglobal ['hlc_5rnd_300WM_mk248_AWM',10]; // G 22
    Vehicle player addBackpackCargoGlobal ["Redd_Milan_Static_Bag", 1];
    Vehicle player addBackpackCargoGlobal ["Redd_Milan_Static_Tripod", 1];
    Vehicle Player addItemCargoGlobal ["Medikit", 1];
    Vehicle Player addItemCargoGlobal ["Toolkit", 1];
    Vehicle Player addItemCargoGlobal ["ACE_wirecutter", 1];
    Vehicle Player addItemCargoGlobal ["ACE_EntrenchingTool", 2];
  sleep 2;
  systemChat "Fahrzeug beladen";
};

S4_fnc_kfzbeladung_moerser = {
  systemChat "Lade Mörsergruppe...";
  If (vest player in S4_Westen ) then {
  Vehicle Player addBackpackCargoGlobal ["BWA3_Kitbag_Tropen_Medic", 2];
    {
      _x addItemCargoGlobal ["ACE_packingBandage", 20];
      _x addItemCargoGlobal ["ACE_fieldDressing", 10];
      _x addItemCargoGlobal ["ACE_quikclot", 35];
      _x addItemCargoGlobal ["ACE_elasticBandage", 8];
      _x addItemCargoGlobal ["ACE_morphine", 30];
      _x addItemCargoGlobal ["ACE_epinephrine", 18];
      _x addItemCargoGlobal ["ACE_bloodIV_250", 6];
      _x addItemCargoGlobal ["ACE_bloodIV_500", 5];
      _x addItemCargoGlobal ["ACE_bloodIV", 5];
    } forEach everyBackpack Vehicle Player;
  } else {
    Vehicle Player addBackpackCargoGlobal ["BWA3_Kitbag_Fleck_Medic", 2];
      {
          _x addItemCargoGlobal ["ACE_packingBandage", 20];
          _x addItemCargoGlobal ["ACE_fieldDressing", 10];
          _x addItemCargoGlobal ["ACE_quikclot", 35];
          _x addItemCargoGlobal ["ACE_elasticBandage", 8];
          _x addItemCargoGlobal ["ACE_morphine", 30];
          _x addItemCargoGlobal ["ACE_epinephrine", 18];
          _x addItemCargoGlobal ["ACE_bloodIV_250", 6];
          _x addItemCargoGlobal ["ACE_bloodIV_500", 5];
          _x addItemCargoGlobal ["ACE_bloodIV", 5];
    } forEach everyBackpack Vehicle Player;
  };
    Vehicle player addbackpackcargoglobal ['B_Mortar_01_support_F',2];
    Vehicle player addbackpackcargoglobal ['B_Mortar_01_weapon_F',2];
    Vehicle player addweaponcargoglobal ['BWA3_Pzf3_Loaded',2];
    Vehicle player addmagazinecargoglobal ['hlc_100Rnd_762x51_M_MG3',8]; //MG3
    Vehicle player addmagazinecargoglobal ['BWA3_200Rnd_556x45',8]; //MG4
    Vehicle player addmagazinecargoglobal ['BWA3_30Rnd_556x45_G36_AP',30];// G36, G38
    Vehicle player addmagazinecargoglobal ['BWA3_10Rnd_762x51_G28_AP',10]; //G28
    //Vehicle Player addmagazinecargoglobal ['hlc_5rnd_300WM_mk248_AWM',10]; // G 22
    Vehicle player addBackpackCargoGlobal ["Redd_Milan_Static_Bag", 1];
    Vehicle player addBackpackCargoGlobal ["Redd_Milan_Static_Tripod", 1];
    Vehicle Player addItemCargoGlobal ["Medikit", 1];
    Vehicle Player addItemCargoGlobal ["Toolkit", 1];
    Vehicle Player addItemCargoGlobal ["ACE_wirecutter", 1];
    Vehicle Player addItemCargoGlobal ["ACE_EntrenchingTool", 2];
  sleep 2;
  systemChat "Fahrzeug beladen";
};

S4_fnc_kfzbeladung_BATFuchs = {
  systemChat "Lade San Material...";
  If (vest player in S4_Westen ) then {
  Vehicle Player addBackpackCargoGlobal ["BWA3_Kitbag_Tropen_Medic", 4];
    {
      _x addItemCargoGlobal ["ACE_packingBandage", 20];
      _x addItemCargoGlobal ["ACE_fieldDressing", 10];
      _x addItemCargoGlobal ["ACE_quikclot", 35];
      _x addItemCargoGlobal ["ACE_elasticBandage", 8];
      _x addItemCargoGlobal ["ACE_morphine", 30];
      _x addItemCargoGlobal ["ACE_epinephrine", 18];
      _x addItemCargoGlobal ["ACE_bloodIV_250", 6];
      _x addItemCargoGlobal ["ACE_bloodIV_500", 5];
      _x addItemCargoGlobal ["ACE_bloodIV", 5];
    } forEach everyBackpack Vehicle Player;
  } else {
    Vehicle Player addBackpackCargoGlobal ["BWA3_Kitbag_Fleck_Medic", 4];
      {
          _x addItemCargoGlobal ["ACE_packingBandage", 20];
          _x addItemCargoGlobal ["ACE_fieldDressing", 10];
          _x addItemCargoGlobal ["ACE_quikclot", 35];
          _x addItemCargoGlobal ["ACE_elasticBandage", 8];
          _x addItemCargoGlobal ["ACE_morphine", 30];
          _x addItemCargoGlobal ["ACE_epinephrine", 18];
          _x addItemCargoGlobal ["ACE_bloodIV_250", 6];
          _x addItemCargoGlobal ["ACE_bloodIV_500", 5];
          _x addItemCargoGlobal ["ACE_bloodIV", 5];
    } forEach everyBackpack Vehicle Player;
  };
    Vehicle Player addItemCargoGlobal ["Medikit", 1];
    Vehicle Player addItemCargoGlobal ["Toolkit", 1];
    Vehicle Player addItemCargoGlobal ["ACE_wirecutter", 1];
    Vehicle Player addItemCargoGlobal ["ACE_EntrenchingTool", 2];
  sleep 2;
  systemChat "Fahrzeug beladen";
};

S4_fnc_kfzbeladung_PioFuchs = {
  systemChat "Lade Pio Material...";
    Vehicle Player addItemCargoGlobal ["Medikit", 1];
    Vehicle Player addItemCargoGlobal ["Toolkit", 1];
    Vehicle Player addItemCargoGlobal ["ACE_wirecutter", 1];
    Vehicle Player addItemCargoGlobal ["ACE_EntrenchingTool", 2];
    Vehicle Player addItemCargoGlobal ["ACE_Sandbag_empty", 10];
    [Vehicle Player, 6] call ace_cargo_fnc_setSpace;
    ["ACE_ConcertinaWireCoil", Vehicle Player] call ace_cargo_fnc_loadItem;
    ["ACE_ConcertinaWireCoil", Vehicle Player] call ace_cargo_fnc_loadItem;
  sleep 2;
  systemChat "Fahrzeug beladen";
};
