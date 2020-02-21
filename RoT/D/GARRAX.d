BEGIN ~GARRAX~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("BattlefertheEye","RA5004",2)~ EXIT
END
