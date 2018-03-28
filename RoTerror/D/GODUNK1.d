BEGIN ~GODUNK1~

IF ~Global("BeforetheEye","RA5003",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("BeforetheEye","RA5003",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("BeforetheEye","RA5003",2)~ EXIT
END
