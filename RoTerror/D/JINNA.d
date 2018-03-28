BEGIN ~JINNA~

IF ~Global("sldkajf","LOCALS",0)
!Global("Burthif","GLOBAL",2)
!Global("Burthif","GLOBAL",4)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @5
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @7
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @8
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @9
  IF ~~ THEN REPLY @10 DO ~SetGlobal("sldkajf","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @11 DO ~SetGlobal("sldkajf","LOCALS",2)~ EXIT
END

IF ~Global("sldkajf","LOCALS",1)
!Global("Burthif","GLOBAL",2)
!Global("Burthif","GLOBAL",4)~ THEN BEGIN 8
  SAY @12
  IF ~~ THEN EXIT
END

IF ~Global("sldkajf","LOCALS",2)
!Global("Burthif","GLOBAL",2)
!Global("Burthif","GLOBAL",4)~ THEN BEGIN 9
  SAY @13
  IF ~~ THEN EXIT
END

IF ~Global("Burthif","GLOBAL",2)
!Global("Burthif","GLOBAL",4)~ THEN BEGIN 10
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.0
  SAY @17
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @18
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @19
  IF ~~ THEN REPLY @20 DO ~SetGlobal("Burthif","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @21 DO ~SetGlobal("Burthif","GLOBAL",3)~ EXIT
END

IF ~Global("Burthif","GLOBAL",4)~ THEN BEGIN 14
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @24 GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @25
  IF ~~ THEN REPLY @26 DO ~SetGlobal("Burthif","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY @27
  IF ~~ THEN REPLY @26 DO ~SetGlobal("Burthif","GLOBAL",5)~ EXIT
END
