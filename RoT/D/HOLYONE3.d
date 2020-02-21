BEGIN ~HOLYONE3~

IF ~Global("Noshol3","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Noshol3","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("Noshol3","GLOBAL",2)
SetGlobal("StrtDur","RR3302",1)~ EXIT
END

IF ~Global("PassDur","GLOBAL",1)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("PassDur","GLOBAL",2)
GiveItemCreate("AnciSc",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~Global("PassDur","GLOBAL",3)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXIT
END
