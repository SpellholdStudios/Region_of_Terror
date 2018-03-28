BEGIN ~FENEDON~

IF ~!InParty("Driz2")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Dweaponquest","GLOBAL",0)
IsValidForPartyDialog("Driz2")
!See("Driz2")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("Dweaponquest","GLOBAL",0)
IsValidForPartyDialog("Driz2")
See("Driz2")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXTERN ~DRIZ2J~ 162
END

IF ~~ THEN BEGIN 3 // from: DRIZ2J
  SAY @3
  IF ~~ THEN EXTERN ~DRIZ2J~ 163
END

IF ~~ THEN BEGIN 4 // from: DRIZ2J
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5
  IF ~~ THEN EXTERN ~DRIZ2J~ 164
END

IF ~~ THEN BEGIN 6 // from: DRIZ2J
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
  IF ~~ THEN DO ~SetGlobal("Youcanleavenow","GLOBAL",1)~ EXTERN ~DRIZ2J~ 165
END

IF ~Global("Dweaponquest","GLOBAL",1)
!PartyHasItem("DrizztFr")
!PartyHasItem("DrizztDe")~ THEN BEGIN 11
  SAY @11
  IF ~~ THEN DO ~SetGlobal("Youcanleavenow","GLOBAL",1)~ EXIT
END

IF ~Global("Dweaponquest","GLOBAL",1)
See("Driz2")
PartyHasItem("DrizztFr")
PartyHasItem("DrizztDe")~ THEN BEGIN 12
  SAY @11
  IF ~~ THEN EXTERN ~DRIZ2J~ 172
END

IF ~~ THEN BEGIN 13 // from:
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Dweaponquest","GLOBAL",2)~ EXIT
END

IF ~Global("Dweaponquest","GLOBAL",2)~ THEN BEGIN 14
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("Dweaponquest","GLOBAL",1)
!See("Driz2")
PartyHasItem("DrizztFr")
PartyHasItem("DrizztDe")~ THEN BEGIN 15
  SAY @11
  IF ~~ THEN EXIT
END
