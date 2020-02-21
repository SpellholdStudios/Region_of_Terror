BEGIN ~ARLTELL~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~RevealAreaOnMap("RR3100")
EscapeArea()~ EXIT
END
