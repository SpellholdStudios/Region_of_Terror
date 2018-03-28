BEGIN ~MYSHDW08~

IF ~Global("TheBattle","RA4006",0)
!PartyHasItem("MarkShdw")
!Dead("Gholim")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("TheBattle","RA4006",0)
PartyHasItem("MarkShdw")
!Dead("Gholim")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("TheBattle","RA4006",1)~ EXIT
  IF ~~ THEN REPLY @3 EXIT
END

