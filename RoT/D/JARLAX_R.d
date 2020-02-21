BEGIN ~JARLAX_R~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN EXTERN ~ENTERI~ 0
END

IF ~Global("EntandDri","GLOBAL",3)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 8.1 8.0 2.1 2.0 1.1
  SAY @8
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @11
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @12
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 3
  IF ~~ THEN REPLY @15 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY @16
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @17
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @18
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @19
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @20
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @21
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 21
  IF ~~ THEN REPLY @25 GOTO 22
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~Global("sdafjafdskj","LOCALS",3)~ THEN REPLY @27 GOTO 23
  IF ~~ THEN REPLY @28 GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 24.0 22.0 21.0 19.0 18.0 15.0
  SAY @29
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @30
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @31
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 21
  IF ~~ THEN REPLY @32 GOTO 22
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~Global("sdafjafdskj","LOCALS",3)~ THEN REPLY @27 GOTO 23
  IF ~~ THEN REPLY @33 GOTO 25
END

IF ~~ THEN BEGIN 19 // from: 24.3 22.3 21.3 19.3 18.3 15.3
  SAY @34
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 21
  IF ~~ THEN REPLY @32 GOTO 22
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~Global("sdafjafdskj","LOCALS",3)~ THEN REPLY @27 GOTO 23
  IF ~~ THEN REPLY @33 GOTO 25
END

IF ~~ THEN BEGIN 21 // from: 24.1 22.1 21.1 19.1 18.1 15.1
  SAY @35
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 21
  IF ~~ THEN REPLY @32 GOTO 22
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~Global("sdafjafdskj","LOCALS",3)~ THEN REPLY @27 GOTO 23
  IF ~~ THEN REPLY @33 GOTO 25
END

IF ~~ THEN BEGIN 22 // from: 24.2 22.2 21.2 19.2 18.2 15.2
  SAY @36
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 21
  IF ~~ THEN REPLY @32 GOTO 22
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~Global("sdafjafdskj","LOCALS",3)~ THEN REPLY @27 GOTO 23
  IF ~~ THEN REPLY @33 GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 24.4 22.4 21.4 19.4 18.4 15.4
  SAY @37
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @38
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 21
  IF ~~ THEN REPLY @32 GOTO 22
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~Global("sdafjafdskj","LOCALS",3)~ THEN REPLY @27 GOTO 23
  IF ~~ THEN REPLY @33 GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.5 22.5 21.5 19.5 18.5 15.5
  SAY @39
  IF ~Alignment(Player1,MASK_GOOD)~ THEN DO ~SetGlobal("EntandDri","GLOBAL",4)~ EXIT
  IF ~Alignment(Player1,MASK_EVIL)~ THEN GOTO 26
  IF ~Alignment(Player1,MASK_GENEUTRAL)~ THEN DO ~SetGlobal("EntandDri","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY @40
  IF ~!InParty("Wulfg2")
!InParty("Brue2")
!InParty("Reg2")~ THEN GOTO 31
  IF ~OR(3)
InParty("Wulfg2")
InParty("Brue2")
InParty("Reg2")~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.7 26.6 26.5 26.4 26.3 26.2 26.0
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 28
  IF ~~ THEN REPLY @43 GOTO 29
  IF ~~ THEN REPLY @44 GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @45
  IF ~InParty("Wulfg2")
InParty("Brue2")
InParty("Reg2")~ THEN DO ~SetGlobal("Bedriyesfri","GLOBAL",1)
SetGlobal("Theyaaw","GLOBAL",1)~ EXIT
  IF ~InParty("Wulfg2")
InParty("Brue2")
!InParty("Reg2")~ THEN DO ~SetGlobal("Bedriyesfri","GLOBAL",1)
SetGlobal("Wegowre","GLOBAL",1)~ EXIT
  IF ~InParty("Wulfg2")
!InParty("Brue2")
InParty("Reg2")~ THEN DO ~SetGlobal("Bedriyesfri","GLOBAL",1)
SetGlobal("Wegowbru","GLOBAL",1)~ EXIT
  IF ~!InParty("Wulfg2")
InParty("Brue2")
InParty("Reg2")~ THEN DO ~SetGlobal("Bedriyesfri","GLOBAL",1)
SetGlobal("Wegowwu","GLOBAL",1)~ EXIT
  IF ~InParty("Wulfg2")
!InParty("Brue2")
!InParty("Reg2")~ THEN DO ~SetGlobal("Bedriyesfri","GLOBAL",1)
SetGlobal("Wegwiwu","GLOBAL",1)~ EXIT
  IF ~!InParty("Wulfg2")
InParty("Brue2")
!InParty("Reg2")~ THEN DO ~SetGlobal("Bedriyesfri","GLOBAL",1)
SetGlobal("Wegwibru","GLOBAL",1)~ EXIT
  IF ~!InParty("Wulfg2")
!InParty("Brue2")
InParty("Reg2")~ THEN DO ~SetGlobal("Bedriyesfri","GLOBAL",1)
SetGlobal("Wegwire","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY @46
  IF ~~ THEN DO ~SetGlobal("EntandDri","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.2
  SAY @47
  IF ~~ THEN DO ~SetGlobal("EntandDri","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.1
  SAY @48
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @49
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @50
  IF ~~ THEN REPLY @42 GOTO 34
  IF ~~ THEN REPLY @43 GOTO 35
  IF ~~ THEN REPLY @44 GOTO 36
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @51
  IF ~~ THEN DO ~SetGlobal("Bedrinofri","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY @46
  IF ~~ THEN DO ~SetGlobal("EntandDri","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.2
  SAY @47
  IF ~~ THEN DO ~SetGlobal("EntandDri","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY @52 
  IF ~~ THEN EXIT
END

IF ~Global("Fibattythig","GLOBAL",2)~ THEN BEGIN 38
  SAY @53 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY @54
  IF ~~ THEN EXTERN ~ENTER2~ 2
END

IF ~~ THEN BEGIN 40 // from:
  SAY @55
  IF ~~ THEN DO ~JoinParty()~ EXIT
END
