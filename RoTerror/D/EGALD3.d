BEGIN ~EGALD3~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~GiveGoldForce(250)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~EraseJournalEntry(@571801)
EraseJournalEntry(@571802)
EraseJournalEntry(@571803)
EraseJournalEntry(@571806)
EraseJournalEntry(@575862)
EscapeArea()~ SOLVED_JOURNAL @571805 EXIT
END
