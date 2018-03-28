BEGIN ~CULTBE19~

IF ~NumTimesTalkedTo(0)
!Global("JoinTheCult","GLOBAL",16)
Global("BeastCultMembership","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
!Global("JoinTheCult","GLOBAL",16)
Global("BeastCultMembership","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("JoinTheCult","GLOBAL",16)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("JoinTheCult","GLOBAL",18)~ EXIT
  IF ~~ THEN REPLY @4 DO ~SetGlobal("JoinTheCult","GLOBAL",18)~ EXIT
  IF ~~ THEN REPLY @5 DO ~SetGlobal("JoinTheCult","GLOBAL",17)~ EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",1)
!Global("JoinTheCult","GLOBAL",16)~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN EXIT
END

IF ~Global("BeastCultMembership","GLOBAL",2)~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN EXIT
END
