BEGIN ~MONKSS1~

IF ~Global("KeyQuest","RA5602",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @6
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @7
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @8
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @9
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @10
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @11
  IF ~~ THEN DO ~SetGlobal("KeyQuest","RA5602",1)~ EXIT
END

IF ~Global("KeyQuest","RA5602",1)~ THEN BEGIN 12
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 13
  IF ~~ THEN REPLY @14 GOTO 16
  IF ~~ THEN REPLY @15 GOTO 17
  IF ~~ THEN REPLY @16 EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @17
  IF ~Global("PlantedItems","RA5602",1)~ THEN GOTO 14
  IF ~Global("PlantedItems","RA5602",0)~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @18
  IF ~~ THEN DO ~SetGlobal("KeyQuest","RA5602",2)
AddExperienceParty(50000)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2
  SAY @5
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @6
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @7
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @8
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @9
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @10
  IF ~~ THEN EXIT
END
