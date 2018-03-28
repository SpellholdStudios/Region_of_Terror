BEGIN ~ERRTU~

IF ~IsValidForPartyDialog("Wulfg2")
IsValidForPartyDialog("Driz2")
NumTimesTalkedTo(0)
Global("FirstEr","GLOBAL",0)~ THEN BEGIN 0 // from: 24.0
  SAY @0 
  IF ~~ THEN EXTERN ~DRIZ2J~ 56
END

IF ~~ THEN BEGIN 1 // from: DRIZ2J
  SAY @1 
  IF ~~ THEN EXTERN ~DRIZ2J~ 57
END

IF ~~ THEN BEGIN 2 // from: WULFG2J
  SAY @2 
  IF ~~ THEN EXTERN ~WULFG2J~ 36
END

IF ~~ THEN BEGIN 3 // from: WULFG2J
  SAY @3 
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 21.0 3.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 21.1 3.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 28.0 27.0 21.2 18.2 15.3 14.2 11.3 10.2 8.3 6.3 5.0 4.1 3.2
  SAY @18 
  IF ~~ THEN DO ~Enemy()
SetGlobal("BattErr","GLOBAL",1)
SetGlobal("FirstEr","GLOBAL",2)
SetGlobal("SecEr","GLOBAL",2)
SetGlobal("ThirEr","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY @19
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 18.0 15.1 14.0 11.1 8.0 6.0
  SAY @20
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 18.1 15.2 10.0 8.1 6.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @26
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @27
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @28
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 7
END

IF ~~ THEN BEGIN 15 // from: 14.1 11.2 10.1 8.2 6.2
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 16
  IF ~~ THEN REPLY @31 GOTO 9
  IF ~~ THEN REPLY @32 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 7
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @33
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @28
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @34
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 7
END

IF ~!IsValidForPartyDialog("Wulfg2")
IsValidForPartyDialog("Driz2")
NumTimesTalkedTo(0)
Global("SecEr","GLOBAL",0)~ THEN BEGIN 19 // from: 25.0
  SAY @0 
  IF ~~ THEN EXTERN ~DRIZ2J~ 58
END

IF ~~ THEN BEGIN 20 // from: DRIZ2J
  SAY @1 
  IF ~~ THEN EXTERN ~DRIZ2J~ 59
END

IF ~~ THEN BEGIN 21 // from: DRIZ2J
  SAY @3 
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 22 // from: DRIZ2J
  SAY @35 
  IF ~~ THEN EXTERN ~DRIZ2J~ 60
END

IF ~!IsValidForPartyDialog("Driz2")
NumTimesTalkedTo(0)
Global("ThirEr","GLOBAL",0)~ THEN BEGIN 23
  SAY @36
  IF ~~ THEN DO ~SetGlobal("SecEr","GLOBAL",1)
SetGlobal("FirstEr","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedToGT(0)
IsValidForPartyDialog("Driz2")
IsValidForPartyDialog("Wulfg2")
Global("FirstEr","GLOBAL",1)~ THEN BEGIN 24
  SAY @37
  IF ~~ THEN GOTO 0
END

IF ~NumTimesTalkedToGT(0)
!IsValidForPartyDialog("Wulfg2")
IsValidForPartyDialog("Driz2")
Global("SecEr","GLOBAL",1)~ THEN BEGIN 25
  SAY @37
  IF ~~ THEN GOTO 19
END

IF ~NumTimesTalkedToGT(0)
!IsValidForPartyDialog("Wulfg2")
!IsValidForPartyDialog("Wulfg2")
Global("ThirEr","GLOBAL",0)~ THEN BEGIN 26
  SAY @36
  IF ~~ THEN DO ~SetGlobal("SecEr","GLOBAL",1)
SetGlobal("FirstEr","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: DRIZ2J
  SAY @38 
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 28 // from: WULFG2J
  SAY @38 
  IF ~~ THEN GOTO 7
END
