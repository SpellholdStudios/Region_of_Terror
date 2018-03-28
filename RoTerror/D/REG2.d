BEGIN ~REG2~

IF ~!Dead("Driz2")
!Dead("Wulfg2")
InParty("Driz2")
InParty("Wulfg2")
NumTimesTalkedTo(0)
Global("RegTalk","GLOBAL",0)
Dead("Tannar2")
Dead("Tannar3")
Dead("Errtu")~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN EXTERN ~DRIZ2J~ 62
END

IF ~~ THEN BEGIN 1 //from: DRIZ2J
  SAY @1
  IF ~~ THEN EXTERN ~DRIZ2J~ 63
END

IF ~~ THEN BEGIN 2 //from: DRIZ2J
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN EXTERN ~WULFG2J~ 38
END

IF ~~ THEN BEGIN 4 //from: DRIZ2J
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 20.0 4.0
  SAY @5
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @6
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @7
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @8
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @9
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @10
  IF ~~ THEN EXTERN ~DRIZ2J~ 65
END

IF ~~ THEN BEGIN 11 //from: DRIZ2J
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 21.0 11.0
  SAY @14
  IF ~~ THEN REPLY @15 DO ~SetGlobal("ResReg","GLOBAL",1)~ GOTO 13
  IF ~~ THEN REPLY @16 DO ~SetGlobal("ResReg","GLOBAL",1)~ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 15.0 12.0
  SAY @17
  IF ~~ THEN DO ~SetGlobal("RegTalk","GLOBAL",1)
SetGlobal("Reg2JoinedOnce","GLOBAL",1)
RevealAreaOnMap("AR1100")
AddXPObject(Player1,15000)
AddXPObject(Player2,15000)
AddXPObject(Player3,15000)
AddXPObject(Player4,15000)
AddXPObject(Player5,15000)
AddXPObject(Player6,15000)
JoinParty()~ UNSOLVED_JOURNAL @564415 EXIT
END

IF ~~ THEN BEGIN 14 // from: 15.1 12.1
  SAY @18
  IF ~~ THEN DO ~SetGlobal("RegTalk","GLOBAL",1)
SetGlobal("RegiKickedOut","LOCALS",1)
SetGlobal("Reg2JoinedOnce","GLOBAL",1)
SetGlobal("RegisOut","GLOBAL",1)
RevealAreaOnMap("AR1100")
AddXPObject(Player1,15000)
AddXPObject(Player2,15000)
AddXPObject(Player3,15000)
AddXPObject(Player4,15000)
AddXPObject(Player5,15000)
AddXPObject(Player6,15000)
EscapeAreaMove("AR0406",1345,1735,0)~ UNSOLVED_JOURNAL @564415 EXIT
END

IF ~~ THEN BEGIN 15 // from: 21.1 11.1
  SAY @19
  IF ~~ THEN REPLY @20 DO ~SetGlobal("ResReg","GLOBAL",1)~ GOTO 13
  IF ~~ THEN REPLY @21 DO ~SetGlobal("ResReg","GLOBAL",1)~ GOTO 14
END

IF ~!Dead("Driz2")
InParty("Driz2")
!InParty("Wulfg2")
NumTimesTalkedTo(0)
Global("RegTalk","GLOBAL",0)
Dead("Tannar2")
Dead("Tannar3")
Dead("Errtu")~ THEN BEGIN 16
  SAY @22 
  IF ~~ THEN EXTERN ~DRIZ2J~ 67
END

IF ~~ THEN BEGIN 17 //from: DRIZ2J
  SAY @1
  IF ~~ THEN EXTERN ~DRIZ2J~ 68
END

IF ~~ THEN BEGIN 18 //from: DRIZ2J
  SAY @2
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @3
  IF ~~ THEN EXTERN ~DRIZ2J~ 69
END

IF ~!Dead("Driz2")
InParty("Driz2")
!InParty("Wulfg2")
Global("Cantcome","LOCALS",3)~ THEN BEGIN 20
  SAY @23
  IF ~~ THEN GOTO 5
END

IF ~!Dead("Driz2")
InParty("Driz2")
!InParty("Wulfg2")
Global("Cantcome","LOCALS",3)~ THEN BEGIN 21
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 15
END

IF ~Global("RegiKickedOut","LOCALS",1)~ THEN BEGIN 22
  SAY @24
  IF ~~ THEN REPLY @25 DO ~SetGlobal("RegiKickedOut","LOCALS",2)
SetGlobal("RegisOut","GLOBAL",0)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @26 EXIT
END
