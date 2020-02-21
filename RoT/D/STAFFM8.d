BEGIN ~STAFFM8~

IF ~!Global("AbaKor","GLOBAL",1)
!Global("AbaPla","GLOBAL",1)
!Global("AbaWulf","GLOBAL",1)
!Global("AbaBru","GLOBAL",1)
!Global("AbaMaz","GLOBAL",1)
!Global("AbaTap","GLOBAL",1)
!Global("AbaKor","GLOBAL",9)
!Global("AbaPla","GLOBAL",9)
!Global("AbaWulf","GLOBAL",9)
!Global("AbaBru","GLOBAL",9)
!Global("AbaMaz","GLOBAL",9)
!Global("AbaTap","GLOBAL",9)
!Global("AbaKor","GLOBAL",17)
!Global("AbaPla","GLOBAL",17)
!Global("AbaWulf","GLOBAL",17)
!Global("AbaBru","GLOBAL",17)
!Global("AbaMaz","GLOBAL",17)
!Global("AbaTap","GLOBAL",17)
!Global("AbaKor","GLOBAL",25)
!Global("AbaPla","GLOBAL",25)
!Global("AbaWulf","GLOBAL",25)
!Global("AbaBru","GLOBAL",25)
!Global("AbaMaz","GLOBAL",25)
!Global("AbaTap","GLOBAL",25)
!Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("AbaKor","GLOBAL",1)~ THEN BEGIN 1
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
  IF ~~ THEN EXTERN ~KORGANJ~ s222
END

IF ~Global("AbaTap","GLOBAL",1)~ THEN BEGIN 20
  SAY @5
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @2
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @3
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @4
  IF ~~ THEN EXTERN ~TAPIOJ~ 0
END

IF ~Global("AbaBru","GLOBAL",1)~ THEN BEGIN 24
  SAY @6
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @2
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @3
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @4
  IF ~~ THEN EXTERN ~BRUE2J~ 10
END

IF ~Global("AbaWulf","GLOBAL",1)~ THEN BEGIN 28
  SAY @7
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY @2
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @3
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @4
  IF ~~ THEN EXTERN ~WULFG2J~ 44
END

IF ~Global("AbaPla","GLOBAL",1)~ THEN BEGIN 32
  SAY @8
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @2
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @3
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @4
  IF ~~ THEN REPLY @9 DO ~SetGlobal("AbaPla","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @10 DO ~SetGlobal("AbaPla","GLOBAL",2)~ EXIT
END

IF ~Global("AbaMaz","GLOBAL",1)~ THEN BEGIN 36
  SAY @11
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @2
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY @3
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY @4
  IF ~~ THEN EXTERN ~MAZZYJ~ s204
END

IF ~Global("AbaKor","GLOBAL",9)~ THEN BEGIN 40
  SAY @12
  IF ~~ THEN EXTERN ~KORGANJ~ s223
END

IF ~Global("AbaKor","GLOBAL",17)~ THEN BEGIN 41
  SAY @12
  IF ~~ THEN EXTERN ~KORGANJ~ s224
END

IF ~Global("AbaKor","GLOBAL",25)~ THEN BEGIN 42
  SAY @12
  IF ~~ THEN EXTERN ~KORGANJ~ s225
END

IF ~Global("AbaTap","GLOBAL",9)~ THEN BEGIN 43
  SAY @12
  IF ~~ THEN EXTERN ~TAPIOJ~ 1
END

IF ~Global("AbaTap","GLOBAL",17)~ THEN BEGIN 44
  SAY @12
  IF ~~ THEN EXTERN ~TAPIOJ~ 2
END

IF ~Global("AbaTap","GLOBAL",25)~ THEN BEGIN 45
  SAY @12
  IF ~~ THEN EXTERN ~TAPIOJ~ 3
END

IF ~Global("AbaBru","GLOBAL",9)~ THEN BEGIN 46
  SAY @12
  IF ~~ THEN EXTERN ~BRUE2J~ 11
END

IF ~Global("AbaBru","GLOBAL",17)~ THEN BEGIN 47
  SAY @12
  IF ~~ THEN EXTERN ~BRUE2J~ 12
END

IF ~Global("AbaBru","GLOBAL",25)~ THEN BEGIN 48
  SAY @12
  IF ~~ THEN EXTERN ~BRUE2J~ 13
END

IF ~Global("AbaWulf","GLOBAL",9)~ THEN BEGIN 49
  SAY @12
  IF ~~ THEN EXTERN ~WULFG2J~ 45
END

IF ~Global("AbaWulf","GLOBAL",17)~ THEN BEGIN 50
  SAY @12
  IF ~~ THEN EXTERN ~WULFG2J~ 46
END

IF ~Global("AbaWulf","GLOBAL",25)~ THEN BEGIN 51
  SAY @12
  IF ~~ THEN EXTERN ~WULFG2J~ 47
END

IF ~Global("AbaPla","GLOBAL",9)~ THEN BEGIN 52
  SAY @12
  IF ~~ THEN REPLY @13 DO ~SetGlobal("AbaPla","GLOBAL",10)~ EXIT
  IF ~~ THEN REPLY @14 DO ~SetGlobal("AbaPla","GLOBAL",10)~ EXIT
END

IF ~Global("AbaPla","GLOBAL",17)~ THEN BEGIN 53
  SAY @12
  IF ~~ THEN REPLY @13 DO ~SetGlobal("AbaPla","GLOBAL",18)~ EXIT
  IF ~~ THEN REPLY @14 DO ~SetGlobal("AbaPla","GLOBAL",18)~ EXIT
END

IF ~Global("AbaPla","GLOBAL",25)~ THEN BEGIN 54
  SAY @12
  IF ~~ THEN REPLY @13 DO ~SetGlobal("AbaPla","GLOBAL",26)~ EXIT
  IF ~~ THEN REPLY @14 DO ~SetGlobal("AbaPla","GLOBAL",26)~ EXIT
END

IF ~Global("AbaMaz","GLOBAL",9)~ THEN BEGIN 55
  SAY @12
  IF ~~ THEN EXTERN ~MAZZYJ~ s205
END

IF ~Global("AbaMaz","GLOBAL",17)~ THEN BEGIN 56
  SAY @12
  IF ~~ THEN EXTERN ~MAZZYJ~ s206
END

IF ~Global("AbaMaz","GLOBAL",25)~ THEN BEGIN 57
  SAY @12
  IF ~~ THEN EXTERN ~MAZZYJ~ s207
END

IF ~Global("Ardaeffects","GLOBAL",5)~ THEN BEGIN 61
  SAY @15
  IF ~~ THEN EXIT
END
