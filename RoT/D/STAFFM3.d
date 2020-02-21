BEGIN ~STAFFM3~

IF ~!Global("ArenaRews","GLOBAL",1)
!Global("ArenaRews","GLOBAL",6)
!Global("ArenaRews","GLOBAL",11)
!Global("ArenaRews","GLOBAL",16)
!Global("ArenaRews","GLOBAL",21)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("ArenaRews","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("ArenaRews","GLOBAL",2)~ EXIT
END

IF ~Global("ArenaRews","GLOBAL",6)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("ArenaRews","GLOBAL",7)~ EXIT
END

IF ~Global("ArenaRews","GLOBAL",11)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("ArenaRews","GLOBAL",12)~ EXIT
END

IF ~Global("ArenaRews","GLOBAL",16)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~SetGlobal("ArenaRews","GLOBAL",17)~ EXIT
END

IF ~Global("ArenaRews","GLOBAL",21)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~SetGlobal("ArenaRews","GLOBAL",22)~ EXIT
END

IF ~Global("ArenaRews","GLOBAL",26)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN EXIT
END
