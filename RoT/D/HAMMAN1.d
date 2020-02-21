// creator  : weidu.exe (version 189)
// argument : HAMMAN1.DLG
// game     : .
// source   : ./override/HAMMAN1.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~HAMMAN1~

IF ~~ THEN BEGIN 0 // from: HAMMR2
  SAY @0
  IF ~~ THEN EXTERN ~HAMMR2~ 5
END

IF ~~ THEN BEGIN 1 // from: HAMMR2
  SAY @1
  IF ~~ THEN DO ~SetGlobal("Hammermeetings","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END
