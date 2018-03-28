BEGIN ~TALAVAN5~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("Battlesontalsid","GLOBAL",2)
TakePartyItem("OlmKey")~ EXIT
END
