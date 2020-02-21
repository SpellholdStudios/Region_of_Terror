BEGIN ~STAFFM9~

IF ~!Global("AbaKor","GLOBAL",33)
!Global("AbaPla","GLOBAL",33)
!Global("AbaWulf","GLOBAL",33)
!Global("AbaBru","GLOBAL",33)
!Global("AbaMaz","GLOBAL",33)
!Global("AbaTap","GLOBAL",33)
!Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("AbaKor","GLOBAL",33)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("AbaKor","GLOBAL",34)~ EXIT
END

IF ~Global("AbaTap","GLOBAL",33)~ THEN BEGIN 3
  SAY @1
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("AbaTap","GLOBAL",34)~ EXIT
END

IF ~Global("AbaBru","GLOBAL",33)~ THEN BEGIN 5
  SAY @1
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("AbaBru","GLOBAL",34)~ EXIT
END

IF ~Global("AbaWulf","GLOBAL",33)~ THEN BEGIN 7
  SAY @1
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("AbaWulf","GLOBAL",34)~ EXIT
END

IF ~Global("AbaPla","GLOBAL",33)~ THEN BEGIN 9
  SAY @1
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("AbaPla","GLOBAL",34)~ EXIT
END

IF ~Global("AbaMaz","GLOBAL",33)~ THEN BEGIN 11
  SAY @1
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @2
  IF ~~ THEN DO ~SetGlobal("AbaMaz","GLOBAL",34)~ EXIT
END

IF ~Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 24
  SAY @3
  IF ~~ THEN EXIT
END
