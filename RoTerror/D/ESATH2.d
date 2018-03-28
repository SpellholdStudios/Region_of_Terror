BEGIN ~ESATH2~

IF ~Global("Esathquest","GLOBAL",3)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Esathquest","GLOBAL",4)~ UNSOLVED_JOURNAL @568545 EXIT
END

IF ~Global("Esathquest","GLOBAL",4)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("Esathquest","GLOBAL",5)
Dead("FrDeath")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @5
  IF ~~ THEN DO ~EraseJournalEntry(@568549)
EraseJournalEntry(@568545)
SetGlobal("Esathquest","GLOBAL",6)
AddXPObject(Player1,20000)
AddXPObject(Player2,20000)
AddXPObject(Player3,20000)
AddXPObject(Player4,20000)
AddXPObject(Player5,20000)
AddXPObject(Player6,20000)
EscapeArea()~ SOLVED_JOURNAL @568546 EXIT
END
