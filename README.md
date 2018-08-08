# KFZ-Beladung Arma 3
Beladungsscript für unseren Clan. Die Datei für uns befindet sich im Missionstemplate.
***
# Benutzung

Die Datei runterladen und in den script Ordner unseres Templates einfügen.

Die Missions init öffnen und `0 = execVM "scripts\kfzbeladung.sqf";` einfügen.

Mit den folgenden `addActions` könnt ihr euer Fahrzeuginventar aufrufen.
```
>Entladen              	this addAction ["KFZ entladen", {call S4_fnc_kfzbeladung_entladen}];
>Infantierie   					this addAction ["KFZ Beladung Infanterie", {call S4_fnc_kfzbeladung_Standart}];
>Schwere Gruppe					this addAction ["KFZ Beladung schwere Gruppe", {call S4_fnc_kfzbeladung_schweregruppe}];
>Moerser 					      this addAction ["KFZ Beladung Moerser Gruppe", {call S4_fnc_kfzbeladung_moerser}];
>Fuchs BAT				    	this addAction ["KFZ Beladung Fuchs BAT", {call S4_fnc_kfzbeladung_BATFuchs}];
>Fuchs PIO				    	this addAction ["KFZ Beladung Fuchs PIO", {call S4_fnc_kfzbeladung_PioFuchs}];
```
