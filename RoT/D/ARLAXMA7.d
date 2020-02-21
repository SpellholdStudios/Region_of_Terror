BEGIN ~ARLAXMA7~

IF ~RandomNum(3,1)
!Global("ArlTemplQ","GLOBAL",8)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)
!Global("ArlTemplQ","GLOBAL",8)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)
!Global("ArlTemplQ","GLOBAL",8)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("ArlTemplQ","GLOBAL",8)~ THEN BEGIN 3
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXIT
END
