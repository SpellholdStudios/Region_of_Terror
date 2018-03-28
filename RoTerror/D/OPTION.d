BEGIN ~OPTION~

IF ~Global("Thestrangeman","GLOBAL",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("Thestrangeman","GLOBAL",4)
SetGlobal("Notthisagain","RA5106",1)~ EXIT
  IF ~~ THEN REPLY @2 DO ~SetGlobal("Thestrangeman3","GLOBAL",1)
SetGlobal("Notthisagain","RA5106",1)~ EXIT
END

IF ~Global("Thestrangeman","GLOBAL",3)~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("Thestrangeman","GLOBAL",4)
SetGlobal("Notthisagain","RA5106",1)~ EXIT
  IF ~~ THEN REPLY @3 DO ~SetGlobal("Thestrangeman4","GLOBAL",1)
SetGlobal("Notthisagain","RA5106",1)~ EXIT
END
