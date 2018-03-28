BEGIN ~MAYDOBR~

IF ~Global("Convincethepeople","GLOBAL",0)
InParty("Driz2")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Seethemayor","GLOBAL",4)~ EXTERN ~DRIZ2J~ 158
END

IF ~~ THEN BEGIN 1 // from: DRIZ2J
  SAY @1
  IF ~~ THEN EXTERN ~DRIZ2J~ 159
END

IF ~~ THEN BEGIN 2 // from: DRIZ2J
  SAY @2
  IF ~~ THEN EXTERN ~DRIZ2J~ 160
END

IF ~~ THEN BEGIN 3 // from: DRIZ2J
  SAY @3
  IF ~~ THEN EXTERN ~DRIZ2J~ 161
END

IF ~~ THEN BEGIN 4 // from: DRIZ2J
  SAY @4
  IF ~~ THEN DO ~SetGlobal("Convincethepeople","GLOBAL",1)
SetGlobal("Changepeodialogs","GLOBAL",1)~ UNSOLVED_JOURNAL @572659 EXIT
END

IF ~Global("Convincethepeople","GLOBAL",1)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 10
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 6 // from: 10.0 9.0 5.0
  SAY @10
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @11
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 10
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 8 // from: 10.1 7.0 5.1
  SAY @13
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @14
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 10
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1 7.1 5.2
  SAY @15
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @12 EXIT
END

IF ~Global("Convincethepeople","GLOBAL",0)
NumTimesTalkedTo(0)
!InParty("Driz2")~ THEN BEGIN 11
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 19
  IF ~~ THEN REPLY @8 GOTO 21
  IF ~~ THEN REPLY @19 EXIT
END

IF ~~ THEN BEGIN 12 // from: 28.0 21.0 20.0 11.0
  SAY @20
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @21
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @22
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 16
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @27 EXIT
END

IF ~~ THEN BEGIN 16 // from: 17.0 15.0
  SAY @28
  IF ~~ THEN DO ~SetGlobal("Convincethepeople","GLOBAL",2)
SetGlobal("Changepeodialogs","GLOBAL",1)~ UNSOLVED_JOURNAL @572659 EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 16
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @27 EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1 15.2
  SAY @31
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 28.1 21.1 11.1
  SAY @32
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @14
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @8 GOTO 21
  IF ~~ THEN REPLY @33 EXIT
END

IF ~~ THEN BEGIN 21 // from: 28.2 20.1 11.2
  SAY @15
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 19
  IF ~~ THEN REPLY @33 EXIT
END

IF ~Global("Convincethepeople","GLOBAL",2)~ THEN BEGIN 22
  SAY @5
  IF ~~ THEN REPLY @34 GOTO 23
  IF ~~ THEN REPLY @7 GOTO 25
  IF ~~ THEN REPLY @8 GOTO 27
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 23 // from: 27.0 26.0 22.0
  SAY @35
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @36
  IF ~~ THEN REPLY @7 GOTO 25
  IF ~~ THEN REPLY @8 GOTO 27
  IF ~~ THEN REPLY @33 EXIT
END

IF ~~ THEN BEGIN 25 // from: 27.1 24.0 22.1
  SAY @32
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @14
  IF ~~ THEN REPLY @34 GOTO 23
  IF ~~ THEN REPLY @8 GOTO 27
  IF ~~ THEN REPLY @33 EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.1 24.1 22.2
  SAY @15
  IF ~~ THEN REPLY @34 GOTO 23
  IF ~~ THEN REPLY @7 GOTO 25
  IF ~~ THEN REPLY @33 EXIT
END

IF ~Global("Convincethepeople","GLOBAL",0)
NumTimesTalkedToGT(0)~ THEN BEGIN 28
  SAY @37
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 19
  IF ~~ THEN REPLY @8 GOTO 21
  IF ~~ THEN REPLY @19 EXIT
END

IF ~Global("Convincethepeople","GLOBAL",3)
Global("Afterthequest","LOCALS",0)
GlobalGT("PeoplesMorale","GLOBAL",19)~ THEN BEGIN 29
  SAY @38
  IF ~~ THEN DO ~EraseJournalEntry(@572659)
AddXPObject(Player1,20000)
AddXPObject(Player2,20000)
AddXPObject(Player3,20000)
AddXPObject(Player4,20000)
AddXPObject(Player5,20000)
AddXPObject(Player6,20000)
ReputationInc(2)
SetGlobal("Afterthequest","LOCALS",1)~ SOLVED_JOURNAL @572660 EXIT
END

IF ~Global("Convincethepeople","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",20)
GlobalGT("PeoplesMorale","GLOBAL",14)
Global("Afterthequest","LOCALS",0)~ THEN BEGIN 30
  SAY @39
  IF ~~ THEN DO ~EraseJournalEntry(@572659)
AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)
ReputationInc(1)
SetGlobal("Afterthequest","LOCALS",1)~ SOLVED_JOURNAL @572661 EXIT
END

IF ~Global("Convincethepeople","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",15)
GlobalGT("PeoplesMorale","GLOBAL",9)
Global("Afterthequest","LOCALS",0)~ THEN BEGIN 31
  SAY @40
  IF ~~ THEN DO ~EraseJournalEntry(@572659)
AddXPObject(Player1,8000)
AddXPObject(Player2,8000)
AddXPObject(Player3,8000)
AddXPObject(Player4,8000)
AddXPObject(Player5,8000)
AddXPObject(Player6,8000)
ReputationInc(1)
SetGlobal("Afterthequest","LOCALS",2)~ SOLVED_JOURNAL @572662 EXIT
END

IF ~Global("Convincethepeople","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",10)
GlobalGT("PeoplesMorale","GLOBAL",4)
Global("Afterthequest","LOCALS",0)~ THEN BEGIN 32
  SAY @41
  IF ~~ THEN DO ~EraseJournalEntry(@572659)
AddXPObject(Player1,5000)
AddXPObject(Player2,5000)
AddXPObject(Player3,5000)
AddXPObject(Player4,5000)
AddXPObject(Player5,5000)
AddXPObject(Player6,5000)
SetGlobal("Afterthequest","LOCALS",3)~ SOLVED_JOURNAL @572663 EXIT
END

IF ~Global("Convincethepeople","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",5)
GlobalGT("PeoplesMorale","GLOBAL",-1)
Global("Afterthequest","LOCALS",0)~ THEN BEGIN 33
  SAY @42
  IF ~~ THEN DO ~EraseJournalEntry(@572659)
AddXPObject(Player1,1000)
AddXPObject(Player2,1000)
AddXPObject(Player3,1000)
AddXPObject(Player4,1000)
AddXPObject(Player5,1000)
AddXPObject(Player6,1000)
SetGlobal("Afterthequest","LOCALS",3)~ SOLVED_JOURNAL @572664 EXIT
END

IF ~Global("Convincethepeople","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",0)
GlobalGT("PeoplesMorale","GLOBAL",-6)
Global("Afterthequest","LOCALS",0)~ THEN BEGIN 34
  SAY @42
  IF ~~ THEN DO ~EraseJournalEntry(@572659)
AddXPObject(Player1,1000)
AddXPObject(Player2,1000)
AddXPObject(Player3,1000)
AddXPObject(Player4,1000)
AddXPObject(Player5,1000)
AddXPObject(Player6,1000)
SetGlobal("Afterthequest","LOCALS",3)~ SOLVED_JOURNAL @572664 EXIT
END

IF ~Global("Convincethepeople","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",-5)
GlobalGT("PeoplesMorale","GLOBAL",-11)
Global("Afterthequest","LOCALS",0)~ THEN BEGIN 35
  SAY @43
  IF ~~ THEN DO ~EraseJournalEntry(@572659)
AddXPObject(Player1,8000)
AddXPObject(Player2,8000)
AddXPObject(Player3,8000)
AddXPObject(Player4,8000)
AddXPObject(Player5,8000)
AddXPObject(Player6,8000)
ReputationInc(-1)
SetGlobal("Afterthequest","LOCALS",4)~ SOLVED_JOURNAL @572666 EXIT
END

IF ~Global("Convincethepeople","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",-10)
GlobalGT("PeoplesMorale","GLOBAL",-20)
Global("Afterthequest","LOCALS",0)~ THEN BEGIN 36
  SAY @44
  IF ~~ THEN DO ~EraseJournalEntry(@572659)
AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)
ReputationInc(-2)
SetGlobal("Afterthequest","LOCALS",4)~ SOLVED_JOURNAL @572670 EXIT
END

IF ~Global("Convincethepeople","GLOBAL",3)
GlobalLT("PeoplesMorale","GLOBAL",-19)
Global("Afterthequest","LOCALS",0)~ THEN BEGIN 37
  SAY @45
  IF ~~ THEN DO ~EraseJournalEntry(@572659)
AddXPObject(Player1,15000)
AddXPObject(Player2,15000)
AddXPObject(Player3,15000)
AddXPObject(Player4,15000)
AddXPObject(Player5,15000)
AddXPObject(Player6,15000)
ReputationInc(-2)
SetGlobal("Afterthequest","LOCALS",4)~ SOLVED_JOURNAL @572670 EXIT
END

IF ~Global("Afterthequest","LOCALS",1)~ THEN BEGIN 38
  SAY @46
  IF ~~ THEN EXIT
END

IF ~Global("Afterthequest","LOCALS",2)~ THEN BEGIN 39
  SAY @47
  IF ~~ THEN EXIT
END

IF ~Global("Afterthequest","LOCALS",3)~ THEN BEGIN 40
  SAY @48
  IF ~~ THEN EXIT
END

IF ~Global("Afterthequest","LOCALS",4)~ THEN BEGIN 41
  SAY @49
  IF ~~ THEN EXIT
END
