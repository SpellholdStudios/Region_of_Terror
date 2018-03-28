BEGIN ~HOLYONE1~

IF ~Global("Noshol1","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Noshol1","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("Noshol1","GLOBAL",2)
SetGlobal("StartStr","RR3302",1)~ EXIT
END

IF ~Global("StartStr","RR3302",7)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("StartStr","RR3302",8)
GiveItemCreate("AnciSa",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~Global("StartStr","RR3302",8)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXIT
END
