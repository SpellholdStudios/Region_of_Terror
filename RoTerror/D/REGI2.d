BEGIN ~REGI2~

IF ~Global("Wegowre","GLOBAL",3)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Bedrinofri","GLOBAL",3)
SetGlobal("Wegowre","GLOBAL",4)~ EXIT
END

IF ~Global("Wegwire","GLOBAL",2)~ THEN BEGIN 1
  SAY @1 
  IF ~~ THEN DO ~SetGlobal("Wegwire","GLOBAL",3)~ EXIT
END
