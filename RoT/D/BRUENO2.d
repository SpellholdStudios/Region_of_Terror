BEGIN ~BRUENO2~

IF ~Global("Bedrinofri","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Bedrinofri","GLOBAL",3)~ EXIT
END

IF ~Global("Wegwibru","GLOBAL",2)~ THEN BEGIN 1
  SAY @1 
  IF ~~ THEN DO ~SetGlobal("Wegwibru","GLOBAL",3)~ EXIT
END

IF ~Global("Theyaaw","GLOBAL",2)~ THEN BEGIN 2
  SAY @2 
  IF ~~ THEN DO ~SetGlobal("Bedrinofri","GLOBAL",3)
SetGlobal("Theyaaw","GLOBAL",3)~ EXIT
END

IF ~Global("Wegwire","GLOBAL",3)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("Bedrinofri","GLOBAL",3)
SetGlobal("Wegwire","GLOBAL",4)~ EXIT
END

IF ~Global("Wegwiwu","GLOBAL",3)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~SetGlobal("Bedrinofri","GLOBAL",3)
SetGlobal("Wegwiwu","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~SetGlobal("Bedrinofri","GLOBAL",3)
SetGlobal("Wegowbru","GLOBAL",4)~ EXIT
END

IF ~Global("Wegowwu","GLOBAL",2)~ THEN BEGIN 6
  SAY @6 
  IF ~~ THEN DO ~SetGlobal("Wegowwu","GLOBAL",3)~ EXIT
END

IF ~Global("Wegowre","GLOBAL",2)~ THEN BEGIN 7
  SAY @7 
  IF ~~ THEN DO ~SetGlobal("Wegowre","GLOBAL",3)~ EXIT
END
