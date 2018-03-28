BEGIN ~VIPOH~ 2

IF ~Global("adslf","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN DO ~StartStore("Vipoh",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @5
  IF ~~ THEN DO ~SetGlobal("HelmAnomen","LOCALS",1)~ EXTERN ~ANOMENJ~ 193
END

IF ~~ THEN BEGIN 4 // from:
  SAY @6
  IF ~~ THEN DO ~SetGlobal("HelmViconia","LOCALS",1)~ EXTERN ~VICONIJ~ 46
END

IF ~~ THEN BEGIN 5 // from:
  SAY @7
  IF ~~ THEN DO ~SetGlobal("InteractKeldorn","LOCALS",1)~ EXTERN ~KELDORJ~ 119
END
