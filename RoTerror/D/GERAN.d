BEGIN ~GERAN~

IF ~NumTimesTalkedTo(0)
!Dead("Olmar2")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~PartyGoldGT(3)~ THEN REPLY @4 DO ~RestParty()
TakePartyGold(4)~ EXIT
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @7
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
!Dead("Olmar2")~ THEN BEGIN 4
  SAY @8
  IF ~PartyGoldGT(3)~ THEN REPLY @9 DO ~RestParty()
TakePartyGold(4)~ EXIT
  IF ~~ THEN REPLY @10 EXIT
END

IF ~Global("RuleCas","Global",1)~ THEN BEGIN 5
  SAY @11
  IF ~~ THEN REPLY @12 DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY @13 EXIT
END

IF ~Global("RuleEra","RR3401",1)~ THEN BEGIN 6
  SAY @14
  IF ~~ THEN REPLY @15 DO ~RestParty()
TakePartyGold(4)~ EXIT
  IF ~~ THEN REPLY @10 EXIT
END
