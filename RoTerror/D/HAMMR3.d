BEGIN ~HAMMR3~

IF ~Global("CreatinHamm3","GLOBAL",2)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @6 DO ~SetGlobal("KillHamm1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 7.1 7.0 6.1 6.0 0.1 0.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 2
  IF ~~ THEN REPLY @9 GOTO 2
  IF ~~ THEN REPLY @10 GOTO 3
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 DO ~SetGlobal("KillHamm1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 5.1 5.0 4.0 1.1 1.0
  SAY @14
  IF ~~ THEN DO ~SetGlobal("CreatinHamm3","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @15 /* #71397 */
  IF ~~ THEN REPLY @16 GOTO 4
  IF ~~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @18 DO ~SetGlobal("KillHamm1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 2
  IF ~~ THEN REPLY @21 GOTO 8
  IF ~~ THEN REPLY @22 DO ~SetGlobal("KillHamm1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 2
  IF ~~ THEN REPLY @25 GOTO 2
  IF ~~ THEN REPLY @26 GOTO 8
  IF ~~ THEN REPLY @27 DO ~SetGlobal("KillHamm1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 0.2
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 1
  IF ~~ THEN REPLY @30 GOTO 1
  IF ~~ THEN REPLY @31 GOTO 8
  IF ~~ THEN REPLY @32 GOTO 8
  IF ~~ THEN REPLY @33 DO ~SetGlobal("KillHamm1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.4
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 1
  IF ~~ THEN REPLY @36 GOTO 1
  IF ~~ THEN REPLY @37 GOTO 8
  IF ~~ THEN REPLY @38 DO ~SetGlobal("KillHamm1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.2 6.3 6.2 5.2 4.1 3.1 1.4
  SAY @39
  IF ~~ THEN DO ~SetGlobal("EscapeHamm1","GLOBAL",1)~ EXIT
END

IF ~Global("CreatinHamm3","GLOBAL",3)~ THEN BEGIN 9
  SAY @40
  IF ~~ THEN EXIT
END

IF ~Global("CreatinHamm3","GLOBAL",4)~ THEN BEGIN 10
  SAY @41
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @42
  IF ~~ THEN DO ~AddXPObject(Player1,2000)
AddXPObject(Player2,2000)
AddXPObject(Player3,2000)
AddXPObject(Player4,2000)
AddXPObject(Player5,2000)
AddXPObject(Player6,2000)
SetGlobal("CreatinHamm3","GLOBAL",5)
SetGlobal("Hammermeetings","GLOBAL",7)~ EXIT
END
