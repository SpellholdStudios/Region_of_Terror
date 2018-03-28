BEGIN ~ARFRMRB1~

IF ~!Global("Esathquest","GLOBAL",6)
Global("theboy","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("theboy","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN DO ~SetGlobal("theboy","LOCALS",2)~ EXIT
END

IF ~!Global("Esathquest","GLOBAL",6)
Global("theboy","LOCALS",1)~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN EXIT
END

IF ~!Global("Esathquest","GLOBAL",6)
Global("theboy","LOCALS",2)~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("Esathquest","GLOBAL",6)~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN EXIT
END
