BEGIN ~CULTSA24~

IF ~GlobalLT("SecTorturer4","RA5501",5)~ THEN BEGIN 0 // from: 2.0
  SAY @0
  IF ~Global("Torturing1","LOCALS",0)
!Global("SecTorturer4","RA5501",4)~ THEN REPLY @1 DO ~SetGlobal("Torturing1","LOCALS",1)
IncrementGlobal("SecTorturer4","RA5501",1)~ GOTO 2
  IF ~Global("Torturing2","LOCALS",0)
!Global("SecTorturer4","RA5501",4)~ THEN REPLY @2 DO ~SetGlobal("Torturing2","LOCALS",1)
IncrementGlobal("SecTorturer4","RA5501",1)~ GOTO 2
  IF ~Global("Torturing3","LOCALS",0)
!Global("SecTorturer4","RA5501",4)~ THEN REPLY @3 DO ~SetGlobal("Torturing3","LOCALS",1)
IncrementGlobal("SecTorturer4","RA5501",1)~ GOTO 2
  IF ~Global("Torturing4","LOCALS",0)
!Global("SecTorturer4","RA5501",4)~ THEN REPLY @4 DO ~SetGlobal("Torturing4","LOCALS",1)
IncrementGlobal("SecTorturer4","RA5501",1)~ GOTO 2
  IF ~Global("Torturing5","LOCALS",0)
!Global("SecTorturer4","RA5501",4)~ THEN REPLY @5 DO ~SetGlobal("Torturing5","LOCALS",1)
IncrementGlobal("SecTorturer4","RA5501",1)~ GOTO 2
  IF ~Global("Torturing6","LOCALS",0)
!Global("SecTorturer4","RA5501",4)~ THEN REPLY @6 DO ~SetGlobal("Torturing6","LOCALS",1)
IncrementGlobal("SecTorturer4","RA5501",1)~ GOTO 2
  IF ~Global("Torturing7","LOCALS",0)
!Global("SecTorturer4","RA5501",4)~ THEN REPLY @7 DO ~SetGlobal("Torturing7","LOCALS",1)
IncrementGlobal("SecTorturer4","RA5501",1)~ GOTO 2
  IF ~Global("Torturing8","LOCALS",0)
!Global("SecTorturer4","RA5501",4)~ THEN REPLY @8 DO ~SetGlobal("Torturing8","LOCALS",1)
IncrementGlobal("SecTorturer4","RA5501",1)~ GOTO 2
  IF ~Global("Torturing9","LOCALS",0)
!Global("SecTorturer4","RA5501",4)~ THEN REPLY @9 DO ~SetGlobal("Torturing9","LOCALS",1)
IncrementGlobal("SecTorturer4","RA5501",1)~ GOTO 2
  IF ~Global("Torturing10","LOCALS",0)
!Global("SecTorturer4","RA5501",4)~ THEN REPLY @10 DO ~SetGlobal("Torturing10","LOCALS",1)
IncrementGlobal("SecTorturer4","RA5501",1)~ GOTO 2
  IF ~Global("SecTorturer4","RA5501",4)
Global("Torturing1","LOCALS",0)~ THEN REPLY @1 GOTO 1
  IF ~Global("SecTorturer4","RA5501",4)
Global("Torturing2","LOCALS",0)~ THEN REPLY @2 GOTO 1
  IF ~Global("SecTorturer4","RA5501",4)
Global("Torturing3","LOCALS",0)~ THEN REPLY @3 GOTO 1
  IF ~Global("SecTorturer4","RA5501",4)
Global("Torturing4","LOCALS",0)~ THEN REPLY @4 GOTO 1
  IF ~Global("SecTorturer4","RA5501",4)
Global("Torturing5","LOCALS",0)~ THEN REPLY @5 GOTO 1
  IF ~Global("SecTorturer4","RA5501",4)
Global("Torturing6","LOCALS",0)~ THEN REPLY @6 GOTO 1
  IF ~Global("SecTorturer4","RA5501",4)
Global("Torturing7","LOCALS",0)~ THEN REPLY @7 GOTO 1
  IF ~Global("SecTorturer4","RA5501",4)
Global("Torturing8","LOCALS",0)~ THEN REPLY @8 GOTO 1
  IF ~Global("SecTorturer4","RA5501",4)
Global("Torturing9","LOCALS",0)~ THEN REPLY @9 GOTO 1
  IF ~Global("SecTorturer4","RA5501",4)
Global("Torturing10","LOCALS",0)~ THEN REPLY @10 GOTO 1
  IF ~~ THEN REPLY @11 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.19 0.18 0.17 0.16 0.15 0.14 0.13 0.12 0.11 0.10
  SAY @12
  IF ~~ THEN REPLY @13 DO ~SetGlobal("SecTorturer4","RA5501",5)~ EXIT
  IF ~~ THEN REPLY @14 DO ~SetGlobal("SecTorturer4","RA5501",5)~ EXIT
  IF ~~ THEN REPLY @15 DO ~SetGlobal("SecTorturer4","RA5501",5)~ EXIT
  IF ~~ THEN REPLY @16 DO ~SetGlobal("SecTorturer4","RA5501",5)~ EXIT
  IF ~~ THEN REPLY @17 DO ~SetGlobal("SecTorturer4","RA5501",5)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.9 0.8 0.7 0.6 0.5 0.4 0.3 0.2 0.1 0.0
  SAY @18
  IF ~~ THEN GOTO 0
END
