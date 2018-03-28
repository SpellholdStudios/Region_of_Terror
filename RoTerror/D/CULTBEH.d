BEGIN ~CULTBEH~

IF ~Global("JoinTheCult","GLOBAL",0)
!Global("HostileBeastCult","GLOBAL",1)~ THEN BEGIN 0
  SAY @0 
  IF ~NumInPartyGT(1)~ THEN REPLY @1 GOTO 1
  IF ~NumInPartyLT(2)~ THEN REPLY @1 GOTO 3
  IF ~~ THEN REPLY @2 GOTO 4
  IF ~NumInPartyGT(1)~ THEN REPLY @3 GOTO 6
  IF ~NumInPartyLT(2)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 7.2 7.0 4.0 0.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 6.1 6.0 1.1 1.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 12
  IF ~~ THEN REPLY @11 GOTO 17
END

IF ~~ THEN BEGIN 3 // from: 7.3 7.1 4.1 0.4 0.1
  SAY @12
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 12
  IF ~~ THEN REPLY @11 GOTO 17
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY @13
  IF ~NumInPartyGT(1)~ THEN REPLY @14 GOTO 1
  IF ~NumInPartyLT(2)~ THEN REPLY @14 GOTO 3
  IF ~~ THEN REPLY @15 GOTO 5
  IF ~~ THEN REPLY @16 DO ~EraseJournalEntry(@574058)
EraseJournalEntry(@574059)
SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY @17
  IF ~~ THEN DO ~EraseJournalEntry(@574058)
EraseJournalEntry(@574059)
SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3
  SAY @18
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 0.5
  SAY @19
  IF ~NumInPartyGT(1)~ THEN REPLY @20 GOTO 1
  IF ~NumInPartyLT(2)~ THEN REPLY @20 GOTO 3
  IF ~NumInPartyGT(1)~ THEN REPLY @21 GOTO 1
  IF ~NumInPartyLT(2)~ THEN REPLY @21 GOTO 3
  IF ~~ THEN REPLY @22 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.4
  SAY @23
  IF ~~ THEN DO ~EraseJournalEntry(@574058)
EraseJournalEntry(@574059)
SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0 2.0
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 10
  IF ~~ THEN REPLY @26 GOTO 11
  IF ~~ THEN REPLY @27 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2 9.0
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 14
  IF ~~ THEN REPLY @30 GOTO 15
  IF ~~ THEN REPLY @31 GOTO 16
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @32
  IF ~~ THEN DO ~EraseJournalEntry(@574058)
EraseJournalEntry(@574059)
SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1 2.1
  SAY @33
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 17.0 12.0
  SAY @34
  IF ~~ THEN REPLY @29 GOTO 14
  IF ~~ THEN REPLY @30 GOTO 15
  IF ~~ THEN REPLY @31 GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 15.0 13.0 10.0
  SAY @35
  IF ~~ THEN DO ~SetGlobal("JoinTheCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 10.1
  SAY @36
  IF ~~ THEN REPLY @29 GOTO 14
  IF ~~ THEN REPLY @31 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1 13.2 10.2
  SAY @37
  IF ~~ THEN DO ~EraseJournalEntry(@574058)
EraseJournalEntry(@574059)
SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.2 2.2
  SAY @38
  IF ~~ THEN GOTO 13
END

IF ~Global("JoinTheCult","GLOBAL",4)
!Global("HostileBeastCult","GLOBAL",1)~ THEN BEGIN 18
  SAY @39
  IF ~~ THEN DO ~SetGlobal("JoinTheCult","GLOBAL",5)
SetGlobal("Matthewdialogc","GLOBAL",1)
SetGlobal("BeastCultMembership","GLOBAL",1)
SetGlobalTimer("BeastCultTask1","GLOBAL",THREE_DAYS)
GiveItemCreate("CultSym1",LastTalkedToBy,0,0,0)
AddXPObject(Player1,5000)
AddXPObject(Player2,5000)
AddXPObject(Player3,5000)
AddXPObject(Player4,5000)
AddXPObject(Player5,5000)
AddXPObject(Player6,5000)~ UNSOLVED_JOURNAL @574059 EXIT
END

IF ~Global("JoinTheCult","GLOBAL",6)
!Global("HostileBeastCult","GLOBAL",1)~ THEN BEGIN 19
  SAY @40
  IF ~~ THEN DO ~EraseJournalEntry(@574058)
EraseJournalEntry(@574059)
SetGlobal("HostileBeastCult","GLOBAL",1)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",5)
!Global("HostileBeastCult","GLOBAL",1)~ THEN BEGIN 20
  SAY @41 
  IF ~~ THEN EXIT
END

IF ~Global("JoinTheCult","GLOBAL",7)~ THEN BEGIN 21
  SAY @42
  IF ~~ THEN DO ~SetGlobal("JoinTheCult","GLOBAL",8)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",8)~ THEN BEGIN 22
  SAY @43
  IF ~~ THEN DO ~GiveItemCreate("CultCup1",LastTalkedToBy,0,0,0)
SetGlobal("JoinTheCult","GLOBAL",9)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",10)~ THEN BEGIN 23
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 25
  IF ~~ THEN REPLY @46 EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY @47
  IF ~~ THEN DO ~EraseJournalEntry(@574058)
EraseJournalEntry(@574059)
SetGlobal("JoinTheCult","GLOBAL",14)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",11)
PartyHasItem("CultCup1")~ THEN BEGIN 27
  SAY @48
  IF ~~ THEN DO ~SetGlobal("JoinTheCult","GLOBAL",12)
TakePartyItem("CultCup1")
SetGlobalTimer("BeastCultTask2","GLOBAL",FOUR_DAYS)
AddXPObject(Player1,4000)
AddXPObject(Player2,4000)
AddXPObject(Player3,4000)
AddXPObject(Player4,4000)
AddXPObject(Player5,4000)
AddXPObject(Player6,4000)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",11)
!PartyHasItem("CultCup1")~ THEN BEGIN 28
  SAY @49
  IF ~~ THEN EXIT
END

IF ~Global("JoinTheCult","GLOBAL",13)~ THEN BEGIN 29
  SAY @41 
  IF ~~ THEN EXIT
END

IF ~Global("JoinTheCult","GLOBAL",15)~ THEN BEGIN 30
  SAY @50
  IF ~~ THEN DO ~SetGlobal("JoinTheCult","GLOBAL",16)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",18)~ THEN BEGIN 36
  SAY @51
  IF ~~ THEN DO ~SetGlobal("JoinTheCult","GLOBAL",19)
SetGlobalTimer("BeastCultTask3","GLOBAL",THREE_DAYS)
AddXPObject(Player1,4000)
AddXPObject(Player2,4000)
AddXPObject(Player3,4000)
AddXPObject(Player4,4000)
AddXPObject(Player5,4000)
AddXPObject(Player6,4000)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",19)~ THEN BEGIN 37
  SAY @41 
  IF ~~ THEN EXIT
END

IF ~Global("JoinTheCult","GLOBAL",20)~ THEN BEGIN 38
  SAY @52
  IF ~~ THEN DO ~SetGlobal("JoinTheCult","GLOBAL",21)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",27)~ THEN BEGIN 39
  SAY @53
  IF ~~ THEN DO ~SetGlobal("JoinTheCult","GLOBAL",28)
SetGlobalTimer("BeastCultTask4","GLOBAL",FIVE_DAYS)
AddXPObject(Player1,4000)
AddXPObject(Player2,4000)
AddXPObject(Player3,4000)
AddXPObject(Player4,4000)
AddXPObject(Player5,4000)
AddXPObject(Player6,4000)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",28)~ THEN BEGIN 40
  SAY @41 
  IF ~~ THEN EXIT
END

IF ~Global("JoinTheCult","GLOBAL",29)~ THEN BEGIN 41
  SAY @54
  IF ~~ THEN DO ~SetGlobal("JoinTheCult","GLOBAL",30)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",30)~ THEN BEGIN 42
  SAY @55
  IF ~~ THEN DO ~GiveItemCreate("RitDagg",LastTalkedToBy,0,0,0)
SetGlobal("JoinTheCult","GLOBAL",31)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",32)~ THEN BEGIN 44
  SAY @56
  IF ~~ THEN REPLY @57 DO ~SetGlobal("JoinTheCult","GLOBAL",35)
TakePartyItem("RitDagg")~ EXIT
  IF ~~ THEN REPLY @58 DO ~SetGlobal("JoinTheCult","GLOBAL",34)
TakePartyItem("RitDagg")~ EXIT
  IF ~~ THEN REPLY @59 DO ~TakePartyItem("RitDagg")~ GOTO 45
  IF ~~ THEN REPLY @60 DO ~TakePartyItem("RitDagg")~ GOTO 46
END

IF ~~ THEN BEGIN 45 // from: 44.2
  SAY @61
  IF ~~ THEN REPLY @57 DO ~SetGlobal("JoinTheCult","GLOBAL",35)~ EXIT
  IF ~~ THEN REPLY @58 DO ~SetGlobal("JoinTheCult","GLOBAL",34)~ EXIT
  IF ~~ THEN REPLY @60 GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.2 44.3
  SAY @62
  IF ~~ THEN DO ~EraseJournalEntry(@574058)
EraseJournalEntry(@574059)
SetGlobal("JoinTheCult","GLOBAL",33)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",36)~ THEN BEGIN 47
  SAY @41 
  IF ~~ THEN DO ~SetGlobal("JoinTheCult","GLOBAL",37)
SetGlobalTimer("BeastCultTask5","GLOBAL",FIVE_DAYS)
AddXPObject(Player1,4000)
AddXPObject(Player2,4000)
AddXPObject(Player3,4000)
AddXPObject(Player4,4000)
AddXPObject(Player5,4000)
AddXPObject(Player6,4000)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",37)~ THEN BEGIN 48
  SAY @41 
  IF ~~ THEN EXIT
END

IF ~Global("JoinTheCult","GLOBAL",38)~ THEN BEGIN 50
  SAY @63 
  IF ~~ THEN DO ~SetGlobal("JoinTheCult","GLOBAL",39)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",44)~ THEN BEGIN 57
  SAY @64
  IF ~~ THEN REPLY @65 DO ~SetGlobal("JoinTheCult","GLOBAL",46)~ EXIT
  IF ~~ THEN REPLY @66 DO ~SetGlobal("JoinTheCult","GLOBAL",46)~ EXIT
  IF ~~ THEN REPLY @67 DO ~EraseJournalEntry(@574058)
EraseJournalEntry(@574059)
SetGlobal("JoinTheCult","GLOBAL",45)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",47)~ THEN BEGIN 58
  SAY @68
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY @69
  IF ~~ THEN DO ~GiveItemCreate("CultSym2",LastTalkedToBy,0,0,0)~ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY @70
  IF ~Global("IWasNaked","RA5501",1)
Gender(Player1,FEMALE)
Race(Player1,HUMAN)~ THEN DO ~EraseJournalEntry(@574058)
EraseJournalEntry(@574059)
AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)~ SOLVED_JOURNAL @574061 GOTO 61
  IF ~Global("IWasNaked","RA5501",1)
Gender(Player1,FEMALE)
Race(Player1,ELF)~ THEN DO ~EraseJournalEntry(@574058)
EraseJournalEntry(@574059)
AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)~ SOLVED_JOURNAL @574061 GOTO 61
  IF ~Global("IWasNaked","RA5501",1)
Gender(Player1,FEMALE)
Race(Player1,HALF_ELF)~ THEN DO ~EraseJournalEntry(@574058)
EraseJournalEntry(@574059)
AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)~ SOLVED_JOURNAL @574061 GOTO 61
  IF ~~ THEN DO ~EraseJournalEntry(@574058)
EraseJournalEntry(@574059)
SetGlobal("BeastCultMembership","GLOBAL",2)
SetGlobal("JoinTheCult","GLOBAL",48)
AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)~ SOLVED_JOURNAL @574061 EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.2 60.1 60.0
  SAY @71
  IF ~~ THEN REPLY @72 DO ~SetGlobal("BeastCultMembership","GLOBAL",2)
SetGlobal("JoinTheCult","GLOBAL",50)~ EXIT
  IF ~~ THEN REPLY @73 DO ~SetGlobal("BeastCultMembership","GLOBAL",2)
SetGlobal("JoinTheCult","GLOBAL",50)~ EXIT
  IF ~~ THEN REPLY @74 GOTO 62
  IF ~~ THEN REPLY @75 GOTO 62
  IF ~~ THEN REPLY @76 GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.4 61.3 61.2
  SAY @77
  IF ~~ THEN DO ~SetGlobal("BeastCultMembership","GLOBAL",2)
SetGlobal("JoinTheCult","GLOBAL",48)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",49)~ THEN BEGIN 63
  SAY @78 
  IF ~~ THEN REPLY @79 GOTO 64
  IF ~~ THEN REPLY @80 GOTO 65
  IF ~~ THEN REPLY @81 GOTO 66
  IF ~~ THEN REPLY @82 EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY @83
  IF ~~ THEN DO ~SetGlobal("Ritual1","RA5501",1)~ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.1
  SAY @83
  IF ~~ THEN DO ~SetGlobal("Ritual2","RA5501",1)~ EXIT
END

IF ~~ THEN BEGIN 66 // from: 63.2
  SAY @83
  IF ~~ THEN DO ~SetGlobal("Ritual3","RA5501",1)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",40)~ THEN BEGIN 67
  SAY @84
  IF ~~ THEN REPLY @85 EXIT
  IF ~~ THEN REPLY @86 GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 70.1 69.1 67.1
  SAY @87
  IF ~~ THEN DO ~EraseJournalEntry(@574058)
EraseJournalEntry(@574059)
SetGlobal("JoinTheCult","GLOBAL",45)~ EXIT
END

IF ~Global("JoinTheCult","GLOBAL",42)~ THEN BEGIN 69
  SAY @88
  IF ~~ THEN REPLY @85 EXIT
  IF ~~ THEN REPLY @89 GOTO 68
END

IF ~Global("JoinTheCult","GLOBAL",41)~ THEN BEGIN 70
  SAY @84
  IF ~~ THEN REPLY @85 EXIT
  IF ~~ THEN REPLY @86 GOTO 68
END


