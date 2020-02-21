BEGIN ~TRESHAM1~

IF ~Global("dkjfdfklj","AR0406",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("dkjfdfklj","AR0406",2)~ EXIT
  IF ~~ THEN REPLY @2 DO ~SetGlobal("dkjfdfklj","AR0406",2)~ EXIT
  IF ~~ THEN REPLY @3 EXIT
END

IF ~Global("Itstfacti","AR0400",4)
CombatCounter(0)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 DO ~SetGlobal("Itstfacti","AR0400",5)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("Itstfacti","AR0400",5)
GiveItemCreate("TresLive",LastTalkedToBy,0,0,0)
DestroySelf()~ UNSOLVED_JOURNAL @569184 EXIT
END
