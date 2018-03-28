BEGIN ~TALAVAN~

IF ~NumTimesTalkedTo(0)
!Dead("Olmar2")~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 DO ~SetGlobal("Cantto","RR3451",1)~ GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("Cantto","RR3451",1)~ GOTO 1
  IF ~~ THEN REPLY @3 DO ~SetGlobal("Cantto","RR3451",1)~ GOTO 1
  IF ~~ THEN REPLY @4 DO ~SetGlobal("Cantto","RR3451",1)~ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 8.0 0.2 0.1 0.0
  SAY @5
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 17.0 7.1 4.2 4.1 4.0
  SAY @13
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @14
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY @15
  IF ~~ THEN REPLY @16 DO ~SetGlobal("Talav1","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @17 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 0.3
  SAY @18
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY @19
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 DO ~SetGlobal("Talav1","LOCALS",2)~ GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @24
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 16.1 11.0 10.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @28 DO ~SetGlobal("Talav1","LOCALS",3)~ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 16.2 14.0 12.0
  SAY @29
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 13
  IF ~~ THEN REPLY @32 DO ~SetGlobal("Talav1","LOCALS",3)~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.1 12.2 10.2
  SAY @33
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("Tala","LOCALS",0)
!Dead("Olmar2")~ THEN BEGIN 16
  SAY @34
  IF ~Global("Talav1","LOCALS",1)~ THEN REPLY @35 GOTO 17
  IF ~Global("Talav1","LOCALS",2)~ THEN REPLY @36 GOTO 12
  IF ~Global("Talav1","LOCALS",3)~ THEN REPLY @37 GOTO 13
  IF ~~ THEN REPLY @38 EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @39
  IF ~~ THEN GOTO 5
END

IF ~NumTimesTalkedToGT(0)
Global("Tala","LOCALS",1)
!Dead("Olmar2")~ THEN BEGIN 18
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 19
  IF ~PartyHasItem("OlmKey")
Global("Tlvan","GLOBAL",1)~ THEN REPLY @42 GOTO 20
  IF ~PartyHasItem("OlmKey")
Global("Trvan","GLOBAL",1)~ THEN REPLY @42 GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @43
  IF ~~ THEN DO ~SetGlobal("Tala","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY @44
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @45
  IF ~~ THEN DO ~SetGlobal("LiedOlm1","RR3451",1)
TakePartyItem("OlmKey")~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.2
  SAY @44
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @45
  IF ~~ THEN DO ~SetGlobal("TruthOlm","RR3451",1)
TakePartyItem("OlmKey")~ EXIT
END

IF ~Dead("Olmar2")~ THEN BEGIN 29
  SAY @46 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30 // from: 13.0
  SAY @47
  IF ~~ THEN DO ~SetGlobal("Tala","LOCALS",1)
RevealAreaOnMap("RR3400")~ UNSOLVED_JOURNAL @564129 EXIT
END
