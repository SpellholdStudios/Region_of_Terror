BEGIN ~MARALDA~

IF ~NumTimesTalkedTo(0)
!Dead("Eranda3")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 DO ~SetGlobal("Maralda","LOCALS",8)~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 28.1 28.0 0.1 0.0
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 7.0 3.0
  SAY @13
  IF ~~ THEN DO ~SetGlobal("Maralda","LOCALS",2)
SetGlobal("Marscr","RR3451",1)~ UNSOLVED_JOURNAL @563708 EXIT
END

IF ~~ THEN BEGIN 5 // from: 7.1 3.1
  SAY @14
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @15 GOTO 9
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 16
END

IF ~~ THEN BEGIN 6 // from: 7.2 3.2
  SAY @19
  IF ~~ THEN DO ~SetGlobal("Maralda","LOCALS",7)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 22.0 2.1
  SAY @20
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @21
  IF ~~ THEN DO ~SetGlobal("Maralda","LOCALS",6)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY @22
  IF ~~ THEN REPLY @23 DO ~SetGlobal("Maralda","LOCALS",4)
SetGlobal("Marscr","RR3451",1)~ UNSOLVED_JOURNAL @563708 EXIT
  IF ~~ THEN REPLY @24 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @25
  IF ~~ THEN DO ~SetGlobal("Maralda","LOCALS",2)
SetGlobal("Marscr","RR3451",1)~ UNSOLVED_JOURNAL @563708 EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 12
  IF ~~ THEN REPLY @28 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @29
  IF ~~ THEN DO ~SetGlobal("Maralda","LOCALS",2)
SetGlobal("Marscr","RR3451",1)~ UNSOLVED_JOURNAL @563708 EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 5.2
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 14
  IF ~~ THEN REPLY @32 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @33
  IF ~~ THEN DO ~SetGlobal("Maralda","LOCALS",3)
SetGlobal("Marscr","RR3451",1)~ UNSOLVED_JOURNAL @563708 EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @34
  IF ~~ THEN DO ~SetGlobal("Maralda","LOCALS",5)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.3
  SAY @29
  IF ~~ THEN DO ~SetGlobal("Maralda","LOCALS",2)
SetGlobal("Marscr","RR3451",1)~ UNSOLVED_JOURNAL @563708 EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("Maralda","LOCALS",2)
!Dead("Eranda3")~ THEN BEGIN 17
  SAY @35
  IF ~~ THEN REPLY @36 EXIT
  IF ~PartyHasItem("MaraScrl")~ THEN REPLY @37 GOTO 29
END

IF ~NumTimesTalkedToGT(0)
Global("Maralda","LOCALS",3)
!Dead("Eranda3")~ THEN BEGIN 18
  SAY @35
  IF ~~ THEN REPLY @36 EXIT
  IF ~PartyHasItem("MaraScrl")~ THEN REPLY @37 GOTO 33
END

IF ~NumTimesTalkedToGT(0)
Global("Maralda","LOCALS",4)
!Dead("Eranda3")~ THEN BEGIN 19
  SAY @35
  IF ~~ THEN REPLY @36 EXIT
  IF ~PartyHasItem("MaraScrl")~ THEN REPLY @37 GOTO 37
END

IF ~NumTimesTalkedToGT(0)
Global("Maralda","LOCALS",5)
!Dead("Eranda3")~ THEN BEGIN 20
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 21
  IF ~~ THEN REPLY @40 DO ~SetGlobal("Maralda","LOCALS",5)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @41
  IF ~~ THEN DO ~SetGlobal("Maralda","LOCALS",3)
SetGlobal("Marscr","RR3451",1)~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("Maralda","LOCALS",6)
!Dead("Eranda3")~ THEN BEGIN 22
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 7
  IF ~~ THEN REPLY @44 DO ~SetGlobal("Maralda","LOCALS",6)~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("Maralda","LOCALS",7)
!Dead("Eranda3")~ THEN BEGIN 23
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 24
  IF ~~ THEN REPLY @47 GOTO 25
  IF ~~ THEN REPLY @48 DO ~SetGlobal("Maralda","LOCALS",7)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @49
  IF ~~ THEN DO ~SetGlobal("Maralda","LOCALS",2)
SetGlobal("Marscr","RR3451",1)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 26
  IF ~~ THEN REPLY @52 GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @53
  IF ~~ THEN DO ~SetGlobal("Maralda","LOCALS",3)
SetGlobal("Marscr","RR3451",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY @54
  IF ~~ THEN DO ~SetGlobal("Maralda","LOCALS",5)~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("Maralda","LOCALS",8)
!Dead("Eranda3")~ THEN BEGIN 28
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 DO ~SetGlobal("Maralda","LOCALS",8)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 17.1
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 30
  IF ~~ THEN REPLY @57 GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @58
  IF ~~ THEN REPLY @59 GOTO 31
  IF ~~ THEN REPLY @57 GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @60
  IF ~~ THEN REPLY @57 GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0 30.1 29.1
  SAY @61
  IF ~~ THEN DO ~EraseJournalEntry(@563708)
SetGlobal("Ezmiz","RR3451",1)
SetGlobal("Donfma","RR3451",1)
AddExperienceParty(20000)
SetGlobal("Maralda","LOCALS",10)
TakePartyItem("MaraScrl")~ SOLVED_JOURNAL @563712 EXIT
END

IF ~~ THEN BEGIN 33 // from: 18.1
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 34
  IF ~~ THEN REPLY @62 GOTO 36
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @58
  IF ~~ THEN REPLY @59 GOTO 35
  IF ~~ THEN REPLY @62 GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @60
  IF ~~ THEN REPLY @63 GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0 34.1 33.1
  SAY @64
  IF ~~ THEN DO ~EraseJournalEntry(@563708)
SetGlobal("Ezmiz","RR3451",1)
SetGlobal("Donfma","RR3451",1)
GiveGoldForce(200)
AddExperienceParty(15000)
SetGlobal("Maralda","LOCALS",10)
TakePartyItem("MaraScrl")~ SOLVED_JOURNAL @563712 EXIT
END

IF ~~ THEN BEGIN 37 // from: 19.1
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 38
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @65 GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY @58
  IF ~~ THEN REPLY @59 GOTO 40
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @66 GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 40.0 38.1 37.1
  SAY @67
  IF ~~ THEN DO ~EraseJournalEntry(@563708)
SetGlobal("Ezmiz","RR3451",1)
SetGlobal("Fuwithma","LOCALS",1)
AddExperienceParty(10000)
SetGlobal("Maralda","LOCALS",9)
TakePartyItem("MaraScrl")~ SOLVED_JOURNAL @563712 EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0
  SAY @60
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @68 GOTO 39
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN GOTO 51
END

IF ~Global("MoreWMara","RR3451",1)
Gender(LastTalkedToBy,MALE)
!Dead("Eranda3")~ THEN BEGIN 41
  SAY @69
  IF ~~ THEN REPLY @70 DO ~SetGlobal("MoreWMara","RR3451",2)~ EXIT
  IF ~~ THEN REPLY @71 DO ~SetGlobal("MoreWMara","RR3451",2)~ EXIT
END

IF ~Global("MoreWMara","RR3451",2)
Gender(LastTalkedToBy,MALE)
!Dead("Eranda3")~ THEN BEGIN 42
  SAY @72
  IF ~~ THEN REPLY @73 DO ~RestParty()
SetGlobal("MoreWMara","RR3451",3)~ EXIT
  IF ~~ THEN REPLY @74 DO ~SetGlobal("MoreWMara","RR3451",3)~ EXIT
END

IF ~Global("Donfma","RR3451",1)
!Dead("Eranda3")~ THEN BEGIN 43
  SAY @75
  IF ~~ THEN DO ~SetGlobal("DonFuWMa","RR3451",1)~ EXIT
END

IF ~Global("Maralda","LOCALS",9)
Gender(LastTalkedToBy,MALE)
!Dead("Eranda3")~ THEN BEGIN 44
  SAY @76
  IF ~~ THEN DO ~SetGlobal("MoreWMara","RR3451",1)
SetGlobal("Maralda","LOCALS",10)
RestParty()~ EXIT
END

IF ~Global("MoreWMara","RR3451",3)
Gender(LastTalkedToBy,MALE)
!Dead("Eranda3")~ THEN BEGIN 45
  SAY @77
  IF ~~ THEN REPLY @78 DO ~RestParty()
SetGlobal("MoreWMara","RR3451",4)~ EXIT
  IF ~~ THEN REPLY @79 DO ~SetGlobal("MoreWMara","RR3451",4)~ EXIT
END

IF ~Global("MoreWMara","RR3451",4)
Gender(LastTalkedToBy,MALE)
!Dead("Eranda3")~ THEN BEGIN 46
  SAY @80
  IF ~~ THEN REPLY @73 GOTO 47
  IF ~~ THEN REPLY @81 DO ~SetGlobal("MoreWMara","RR3451",4)~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY @82
  IF ~~ THEN DO ~SetGlobal("Fuinhaste","RR3451",1)~ EXIT
END

IF ~Global("MoreWMara","RR3451",5)
Gender(LastTalkedToBy,MALE)
!Dead("Eranda3")~ THEN BEGIN 48
  SAY @83
  IF ~~ THEN DO ~SetGlobal("MoreWMara","RR3451",6)~ EXIT
END

IF ~Global("MoreWMara","RR3451",6)
Gender(LastTalkedToBy,MALE)
!Dead("Eranda3")~ THEN BEGIN 49
  SAY @72
  IF ~~ THEN REPLY @84 DO ~RestParty()
SetGlobal("MoreWMara","RR3451",6)~ EXIT
  IF ~~ THEN REPLY @85 DO ~SetGlobal("MoreWMara","RR3451",6)~ EXIT
END

IF ~Dead("Eranda3")~ THEN BEGIN 50
  SAY @86
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 40.1
  SAY @87
  IF ~~ THEN DO ~EraseJournalEntry(@563708)
SetGlobal("Ezmiz","RR3451",1)
SetGlobal("Fuwithma","LOCALS",1)
AddExperienceParty(10000)
SetGlobal("Maralda","LOCALS",9)
TakePartyItem("MaraScrl")~ SOLVED_JOURNAL @563712 EXIT
END
