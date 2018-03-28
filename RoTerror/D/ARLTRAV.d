BEGIN ~ARLTRAV~

IF ~Global("Gotdiamnd","RR3105",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Gotdiamnd","RR3105",2)
Enemy()~ EXIT
END

IF ~!Global("Gotdiamnd","RR3105",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END
