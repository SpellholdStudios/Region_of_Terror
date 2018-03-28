BEGIN ~OLMAR4~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~Global("GoldOlmar","GLOBAL",1)~ THEN REPLY @1 GOTO 1
  IF ~Global("EquiOlmar","GLOBAL",1)~ THEN REPLY @2 GOTO 5
  IF ~Global("AbilOlmar","GLOBAL",1)~ THEN REPLY @3 GOTO 6
  IF ~Global("FreeOlmar","GLOBAL",1)~ THEN REPLY @4 DO ~AddExperienceParty(20000)~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5
  IF ~~ THEN DO ~GiveGoldForce(5000)~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 12.0 11.0 10.0 9.0 8.0 7.0 5.0 1.0 0.3
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @9
  IF ~~ THEN DO ~EraseJournalEntry(@564128)
EraseJournalEntry(@564129)
EraseJournalEntry(@564130)
EraseJournalEntry(@564219)
SetGlobal("MeRule","GLOBAL",1)
SetGlobal("DeadPeple2","GLOBAL",1)
AddExperienceParty(100000)
EscapeArea()~ SOLVED_JOURNAL @564221 EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @10
  IF ~~ THEN DO ~EraseJournalEntry(@564128)
EraseJournalEntry(@564129)
EraseJournalEntry(@564130)
EraseJournalEntry(@564219)
SetGlobal("IlhRule","RR3451",1)
SetGlobal("DeadPeple2","GLOBAL",1)
AddExperienceParty(100000)
EscapeArea()~ SOLVED_JOURNAL @564220 EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY @11
  IF ~~ THEN DO ~GiveItemCreate("MithArmr",LastTalkedToBy,0,0,0)
GiveItemCreate("RefRing",LastTalkedToBy,0,0,0)
GiveItemCreate("Katanat",LastTalkedToBy,0,0,0)~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 0.2
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @5
  IF ~~ THEN DO ~GiveItemCreate("Strng",LastTalkedToBy,0,0,0)~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @5
  IF ~~ THEN DO ~GiveItemCreate("Dxtr",LastTalkedToBy,0,0,0)~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY @5
  IF ~~ THEN DO ~GiveItemCreate("Cons",LastTalkedToBy,0,0,0)~ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY @5
  IF ~~ THEN DO ~GiveItemCreate("Wisd",LastTalkedToBy,0,0,0)~ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 6.4
  SAY @5
  IF ~~ THEN DO ~GiveItemCreate("Intl",LastTalkedToBy,0,0,0)~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 6.5
  SAY @5
  IF ~~ THEN DO ~GiveItemCreate("Chrm",LastTalkedToBy,0,0,0)~ GOTO 2
END
