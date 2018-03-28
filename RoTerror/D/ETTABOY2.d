BEGIN ~ETTABOY2~

IF ~!Global("Alknepro","GLOBAL",5)
!Global("Didnknwc","GLOBAL",5)
Global("cgaasdf","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Alknepro","GLOBAL",5)
Global("Didnknwc","GLOBAL",5)
Global("cgaasdf","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN REPLY @7 DO ~GiveItemCreate("BoyAmul",LastTalkedToBy,0,0,0)~ GOTO 4
  IF ~~ THEN REPLY @8 DO ~GiveItemCreate("BoyAmul",LastTalkedToBy,0,0,0)~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.0
  SAY @9
  IF ~~ THEN DO ~SetGlobal("cgaasdf","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @5
  IF ~~ THEN DO ~SetGlobal("cgaasdf","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @10
  IF ~~ THEN DO ~SetGlobal("cgaasdf","LOCALS",1)~ EXIT
END

IF ~Global("Alknepro","GLOBAL",5)
Global("Didnknwc","GLOBAL",5)
Global("cgaasdf","LOCALS",1)~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN EXIT
END
