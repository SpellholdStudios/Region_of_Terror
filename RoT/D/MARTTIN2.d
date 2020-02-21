BEGIN ~MARTTIN2~

IF ~InParty("Driz2")
Global("DlgWmar","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~DRIZ2J~ 94
END

IF ~~ THEN BEGIN 1 // from: DRIZ2J
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 8.1 8.0 7.1 7.0 2.1 2.0
  SAY @8
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN DO ~SetGlobal("DlgWmar","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 8.2 7.2 2.2
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @11
  IF ~~ THEN DO ~SetGlobal("DlgWmar","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1
  SAY @12
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~Global("DlgWmar","GLOBAL",1)~ THEN BEGIN 9
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @16
  IF ~~ THEN DO ~SetGlobal("DlgWmar","GLOBAL",2)
SetGlobal("Movtss","GLOBAL",1)
EscapeAreaMove("RR3700",215,2106,3)~ EXIT
END

IF ~Global("DlgWmar","GLOBAL",2)~ THEN BEGIN 11
  SAY @17
  IF ~~ THEN DO ~SetGlobal("DlgWmar","GLOBAL",3)~ EXIT
END

IF ~Global("DlgWmar","GLOBAL",3)~ THEN BEGIN 12
  SAY @18
  IF ~~ THEN EXIT
END

IF ~Global("DlgWmar","GLOBAL",4)~ THEN BEGIN 13
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 14
  IF ~~ THEN REPLY @21 EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @22
  IF ~~ THEN DO ~SetGlobal("DlgWmar","GLOBAL",5)
SetGlobal("Movtbl","GLOBAL",1)
EscapeAreaMove("ar1600",738,800,11)~ EXIT
END

IF ~Global("DlgWmar","GLOBAL",5)~ THEN BEGIN 15
  SAY @23
  IF ~~ THEN DO ~SetGlobal("DlgWmar","GLOBAL",6)
SetGlobal("NCaDri","GLOBAL",1)
EscapeArea()~ EXIT
END
