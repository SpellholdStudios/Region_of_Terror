BEGIN ~EGALD1~

IF ~Global("Drizztiwdornot","GLOBAL",4)~ THEN BEGIN 0
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
  IF ~InParty("Driz2")
InParty("Wulfg2")~ THEN EXTERN ~DRIZ2J~ 150
  IF ~InParty("Driz2")
!InParty("Wulfg2")~ THEN EXTERN ~DRIZ2J~ 153
  IF ~!InParty("Driz2")
!InParty("Wulfg2")~ THEN REPLY @4 GOTO 4
  IF ~!InParty("Driz2")
!InParty("Wulfg2")~ THEN REPLY @5 GOTO 6
  IF ~!InParty("Driz2")
!InParty("Wulfg2")~ THEN REPLY @6 GOTO 5
  IF ~!InParty("Driz2")
!InParty("Wulfg2")~ THEN REPLY @7 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 6.0 3.2
  SAY @8
  IF ~~ THEN REPLY @9 DO ~SetGlobal("Drizztiwdornot","GLOBAL",8)~ UNSOLVED_JOURNAL @571803 GOTO 21
  IF ~~ THEN REPLY @10 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 6.1 3.4
  SAY @11
  IF ~~ THEN DO ~SetGlobal("Drizztiwdornot","GLOBAL",6)~ UNSOLVED_JOURNAL @571802 EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.3
  SAY @12
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.2 3.5
  SAY @13
  IF ~~ THEN DO ~SetGlobal("Drizztiwdornot","GLOBAL",7)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @14
  IF ~~ THEN DO ~SetGlobal("Drizztiwdornot","GLOBAL",5)~ UNSOLVED_JOURNAL @571801 EXIT
END

IF ~Global("Drizztiwdornot","GLOBAL",5)~ THEN BEGIN 9
  SAY @15
  IF ~~ THEN REPLY @16 DO ~SetGlobal("Drizztiwdornot","GLOBAL",8)~ UNSOLVED_JOURNAL @575862 EXIT
  IF ~~ THEN REPLY @17 EXIT
END

IF ~Global("Drizztiwdornot","GLOBAL",6)~ THEN BEGIN 10
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @21 GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 12.0 10.0
  SAY @22
  IF ~~ THEN DO ~SetGlobal("Drizztiwdornot","GLOBAL",8)~ UNSOLVED_JOURNAL @575862 EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 11
  IF ~~ THEN REPLY @25 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 17.1 12.1
  SAY @26
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY @27
  IF ~~ THEN EXIT
END

IF ~Global("Drizztiwdornot","GLOBAL",7)~ THEN BEGIN 15
  SAY @28
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 17
  IF ~~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @30
  IF ~~ THEN DO ~SetGlobal("Drizztiwdornot","GLOBAL",8)~ UNSOLVED_JOURNAL @571803 EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY @23
  IF ~~ THEN REPLY @31 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 13
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @32
  IF ~~ THEN DO ~SetGlobal("Drizztiwdornot","GLOBAL",8)~ UNSOLVED_JOURNAL @571803 EXIT
END

IF ~~ THEN BEGIN 19 // from: DRIZ2J
  SAY @22
  IF ~~ THEN DO ~SetGlobal("Drizztiwdornot","GLOBAL",8)~ UNSOLVED_JOURNAL @571803 EXIT
END

IF ~~ THEN BEGIN 20 // from: DRIZ2J
  SAY @33
  IF ~~ THEN DO ~SetGlobal("Drizztiwdornot","GLOBAL",5)~ UNSOLVED_JOURNAL @571801 EXIT
END

IF ~~ THEN BEGIN 21 // from: 4.0
  SAY @34
  IF ~~ THEN EXIT
END
