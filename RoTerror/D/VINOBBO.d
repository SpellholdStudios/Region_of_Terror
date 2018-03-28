BEGIN ~VINOBBO~

IF ~Global("Drizztfan","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~IsValidForPartyDialog("Driz2")
Range("Driz2",15)~ THEN REPLY @1 GOTO 1
  IF ~IsValidForPartyDialog("Driz2")
!Range("Driz2",15)~ THEN REPLY @2 EXIT
  IF ~!IsValidForPartyDialog("Driz2")~ THEN REPLY @3 GOTO 2
  IF ~!IsValidForPartyDialog("Driz2")~ THEN REPLY @4 GOTO 6
  IF ~!IsValidForPartyDialog("Driz2")~ THEN REPLY @5 GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6
  IF ~~ THEN EXTERN ~DRIZ2J~ 133
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 3
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @11
  IF ~~ THEN DO ~SetGlobal("Drizztfan","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Drizztfan","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @13
  IF ~~ THEN DO ~SetGlobal("Drizztfan","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3
  SAY @14
  IF ~~ THEN DO ~SetGlobal("Drizztfan","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.4
  SAY @15
  IF ~~ THEN DO ~SetGlobal("Drizztfan","LOCALS",1)~ EXIT
END

IF ~Global("Drizztfan","LOCALS",1)~ THEN BEGIN 8
  SAY @16
  IF ~~ THEN EXIT
END

IF ~Global("Drizztfan","LOCALS",2)~ THEN BEGIN 9
  SAY @17
  IF ~~ THEN EXIT
END

IF ~Global("Drizztfan","LOCALS",3)~ THEN BEGIN 10
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: DRIZ2J
  SAY @19
  IF ~~ THEN EXTERN ~DRIZ2J~ 134
END

IF ~~ THEN BEGIN 12 // from: DRIZ2J
  SAY @20
  IF ~~ THEN EXTERN ~DRIZ2J~ 135
END

IF ~~ THEN BEGIN 13 // from: DRIZ2J
  SAY @21
  IF ~~ THEN DO ~SetGlobal("Drizztfan","LOCALS",4)~ EXIT
END

IF ~Global("Drizztfan","LOCALS",4)~ THEN BEGIN 14
  SAY @22
  IF ~~ THEN EXIT
END
