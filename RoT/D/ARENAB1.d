BEGIN ~ARENAB1~

IF ~Global("ladfskj","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("ladfskj","LOCALS",2)~ EXIT
  IF ~~ THEN REPLY @4 DO ~SetGlobal("ladfskj","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN DO ~SetGlobal("ladfskj","LOCALS",1)
TakePartyGold(2)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN DO ~SetGlobal("ladfskj","LOCALS",1)
TakePartyGold(1)~ EXIT
END

IF ~Global("ladfskj","LOCALS",1)~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("ladfskj","LOCALS",2)~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN EXIT
END
