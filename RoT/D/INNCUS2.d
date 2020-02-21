BEGIN ~INNCUS2~

IF ~GlobalLT("ArlTemplQ","GLOBAL",8)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("ArlTemplQ","GLOBAL",8)~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetName(@12)~ GOTO 2
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~TimeOfDay(2)~ THEN REPLY @7 DO ~SetGlobal("ArlTemplQ","GLOBAL",10)~ EXIT
  IF ~!TimeOfDay(2)~ THEN REPLY @8 DO ~SetGlobal("ArlTemplQ","GLOBAL",9)~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @9
  IF ~~ THEN EXIT
END

IF ~Global("ArlTemplQ","GLOBAL",9)
!TimeOfDay(2)~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN EXIT
END

IF ~Global("ArlTemplQ","GLOBAL",9)
TimeOfDay(2)~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN DO ~SetGlobal("ArlTemplQ","GLOBAL",10)~ EXIT
END
