BEGIN ~WULFGI2~

IF ~Global("Wegwiwu","GLOBAL",2)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN DO ~SetGlobal("Wegwiwu","GLOBAL",3)~ EXIT
END

IF ~Global("Wegowwu","GLOBAL",3)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("Bedrinofri","GLOBAL",3)
SetGlobal("Wegowwu","GLOBAL",4)~ EXIT
END

IF ~Global("Wegwibru","GLOBAL",3)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("Bedrinofri","GLOBAL",3)
SetGlobal("Wegwibru","GLOBAL",4)~ EXIT
END

IF ~Global("Wegowbru","GLOBAL",2)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("Wegowbru","GLOBAL",3)~ EXIT
END
