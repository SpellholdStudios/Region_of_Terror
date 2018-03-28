BEGIN ~STAFFM10~

IF ~Global("ArenaRews","GLOBAL",3)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("ArenaRews","GLOBAL",4)~ EXIT
END

IF ~Global("ArenaRews","GLOBAL",8)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("ArenaRews","GLOBAL",9)~ EXIT
END

IF ~Global("ArenaRews","GLOBAL",13)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("ArenaRews","GLOBAL",14)~ EXIT
END

IF ~Global("ArenaRews","GLOBAL",18)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("ArenaRews","GLOBAL",19)~ EXIT
END

IF ~Global("ArenaRews","GLOBAL",23)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~SetGlobal("ArenaRews","GLOBAL",24)~ EXIT
END

IF ~Global("ArenaRews","GLOBAL",25)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN EXIT
END
