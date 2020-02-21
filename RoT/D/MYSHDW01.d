BEGIN ~MYSHDW01~

IF ~Global("TheGame","RA4006",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN GOTO 6
END

IF ~Global("TheGame","RA4006",1)~ THEN BEGIN 3
  SAY @3
  IF ~Global("LiarShdw6","RA4006",1)
Global("LiarShdw5","RA4006",1)
Global("LiarShdw4","RA4006",1)
Global("LiarShdw3","RA4006",1)
Global("LiarShdw2","RA4006",1)
Global("LiarShdw1","RA4006",1)~ THEN REPLY @4 GOTO 4
  IF ~Global("LiarShdw6","RA4006",1)
Global("LiarShdw5","RA4006",1)
Global("LiarShdw4","RA4006",1)
Global("LiarShdw3","RA4006",1)
Global("LiarShdw2","RA4006",1)
Global("LiarShdw1","RA4006",1)~ THEN REPLY @5 GOTO 4
  IF ~Global("BattlShdw1","RA4006",2)
Global("BattlShdw2","RA4006",2)
Global("BattlShdw3","RA4006",2)
Global("BattlShdw4","RA4006",2)
Global("BattlShdw5","RA4006",2)
Global("BattlShdw6","RA4006",2)~ THEN REPLY @4 GOTO 7
  IF ~Global("BattlShdw1","RA4006",2)
Global("BattlShdw2","RA4006",2)
Global("BattlShdw3","RA4006",2)
Global("BattlShdw4","RA4006",2)
Global("BattlShdw5","RA4006",2)
Global("BattlShdw6","RA4006",2)~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.0
  SAY @6
  IF ~~ THEN DO ~SetGlobal("TheGame","RA4006",2)
GiveItemCreate("MarkShdw",Player1,0,0,0)~ EXIT
END

IF ~Global("TheGame","RA4006",2)~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0
  SAY @8
  IF ~~ THEN DO ~SetGlobal("TheGame","RA4006",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 3.2
  SAY @9
  IF ~~ THEN DO ~SetGlobal("TheGame","RA4006",2)
GiveItemCreate("MarkShdw",Player1,0,0,0)~ EXIT
END
