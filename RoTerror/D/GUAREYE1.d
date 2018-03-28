BEGIN ~GUAREYE1~

IF ~Global("Thirdquest","RA5002",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
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
  IF ~~ THEN REPLY @5 GOTO 11
  IF ~~ THEN REPLY @6 GOTO 13
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 13.0 12.0 4.0
  SAY @8
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @9
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @10
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @11
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @12
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @13
  IF ~~ THEN DO ~SetGlobal("Thirdquest","RA5002",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.1
  SAY @14
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @15
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 3.2
  SAY @16
  IF ~~ THEN GOTO 5
END

IF ~Global("Thirdquest","RA5002",1)
!PartyHasItem("SymbEye")~ THEN BEGIN 14
  SAY @17 /* #70136 */
  IF ~~ THEN EXIT
END

IF ~Global("Thirdquest","RA5002",1)
PartyHasItem("SymbEye")~ THEN BEGIN 15
  SAY @18
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @19
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Thirdquest","RA5002",2)~ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY @21
  IF ~~ THEN EXIT
END

IF ~Global("Thirdquest","RA5002",4)~ THEN BEGIN 19
  SAY @22
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @23
  IF ~~ THEN DO ~SetGlobal("Thirdquest","RA5002",5)~ EXIT
END
