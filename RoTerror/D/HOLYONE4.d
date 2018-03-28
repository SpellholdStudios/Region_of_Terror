BEGIN ~HOLYONE4~

IF ~Global("Noshol4","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Noshol4","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.3 3.2 3.1 3.0
  SAY @9
  IF ~~ THEN DO ~SetGlobal("HolDeth1","GLOBAL",1)
SetGlobal("Noshol","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.4
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @11
  IF ~~ THEN DO ~SetGlobal("PasLuck","GLOBAL",1)
SetGlobal("Noshol4","GLOBAL",2)
GiveItemCreate("AnciSd",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~Global("PasLuck","GLOBAL",1)~ THEN BEGIN 7
  SAY @12
  IF ~~ THEN EXIT
END
