BEGIN ~GUAREYE3~

IF ~Global("BeforetheEye","RA5003",3)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~GUAREYE4~ 0
END

IF ~~ THEN BEGIN 1 // from: GUAREYE6
  SAY @1
  IF ~~ THEN DO ~SetGlobal("BeforetheEye","RA5003",4)~ EXIT
END
