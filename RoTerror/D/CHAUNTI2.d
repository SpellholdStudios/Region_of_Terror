BEGIN ~CHAUNTI2~

IF ~Global("CQuestActive","GLOBAL",18)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("Lgthofss","GLOBAL",1)
EscapeAreaMove("AR0020",686,539,10)~ EXIT
  IF ~~ THEN REPLY @2 DO ~SetGlobal("Lgthofss","GLOBAL",2)
EscapeAreaMove("RR3100",4659,228,10)~ EXIT
  IF ~~ THEN REPLY @3 EXIT
END

IF ~Global("CQuestActive","GLOBAL",19)~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN DO ~SetGlobal("CQuestActive","GLOBAL",20)
EscapeArea()~ EXIT
END
