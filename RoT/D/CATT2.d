BEGIN ~CATT2~

IF ~Global("Theendisnear","GLOBAL",3)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN EXTERN ~DRIZ2J~ 128
END

IF ~~ THEN BEGIN 1 // from: DRIZ2J
  SAY @1
  IF ~~ THEN DO ~SetGlobal("Theendisnear","GLOBAL",4)
SetGlobal("RoTMariborSaved","GLOBAL",1)
SetGlobal("TrigCQCip","GLOBAL",1)
AddXPObject(Player1,100000)
AddXPObject(Player2,100000)
AddXPObject(Player3,100000)
AddXPObject(Player4,100000)
AddXPObject(Player5,100000)
AddXPObject(Player6,100000)
JoinParty()~ SOLVED_JOURNAL @566428 EXIT
END

IF ~~ THEN BEGIN 2 // from: DRIZ2J
  SAY @2
  IF ~~ THEN DO ~SetGlobal("Theendisnear","GLOBAL",4)
SetGlobal("RoTMariborSaved","GLOBAL",1)
SetGlobal("TrigCQCip","GLOBAL",1)
AddXPObject(Player1,100000)
AddXPObject(Player2,100000)
AddXPObject(Player3,100000)
AddXPObject(Player4,100000)
AddXPObject(Player5,100000)
AddXPObject(Player6,100000)
SetGlobal("CattiKickedOut","LOCALS",1)
SetGlobal("CattiBrieOut","GLOBAL",1)
EscapeAreaMove("AR0406",1400,1735,0)~ SOLVED_JOURNAL @566428 EXIT
END

IF ~Global("Catelldrg","RR4005",0)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("asdfadfa","GLOBAL",2)
SetGlobal("Catelldrg","RR4005",2)~ EXIT
END

IF ~Global("CattiKickedOut","LOCALS",1)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("CattiKickedOut","LOCALS",2)
SetGlobal("CattiBrieOut","GLOBAL",0)
JoinParty()~ EXIT
END
