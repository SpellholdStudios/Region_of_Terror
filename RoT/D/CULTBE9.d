BEGIN ~CULTBE9~

IF ~Global("BeastCultMembership","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",1)~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",2)
Global("dfakjlkjdf","LOCALS",0)~ THEN BEGIN 2
  SAY @1
  IF ~~ THEN DO ~SetGlobal("dfakjlkjdf","LOCALS",1)~ EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",2)
Global("dfakjlkjdf","LOCALS",1)~ THEN BEGIN 3
  SAY @2
  IF ~~ THEN REPLY @3 EXIT
  IF ~~ THEN REPLY @4 EXIT
END
