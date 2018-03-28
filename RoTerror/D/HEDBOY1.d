BEGIN ~HEDBOY1~

IF ~!Global("Alknepro","GLOBAL",5)
!Global("Didnknwc","GLOBAL",5)
RandomNum(3,1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~!Global("Alknepro","GLOBAL",5)
!Global("Didnknwc","GLOBAL",5)
RandomNum(3,2)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~!Global("Alknepro","GLOBAL",5)
!Global("Didnknwc","GLOBAL",5)
RandomNum(3,3)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("Alknepro","GLOBAL",5)
Global("Didnknwc","GLOBAL",5)
RandomNum(3,1)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("Alknepro","GLOBAL",5)
Global("Didnknwc","GLOBAL",5)
RandomNum(3,2)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXIT
END

IF ~Global("Alknepro","GLOBAL",5)
Global("Didnknwc","GLOBAL",5)
RandomNum(3,3)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN EXIT
END
