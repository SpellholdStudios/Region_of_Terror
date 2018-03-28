BEGIN ~BREVIL1~

IF ~GlobalLT("PeoplesMorale","GLOBAL",5)~ THEN BEGIN 0
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
  IF ~~ THEN EXIT
END

IF ~GlobalLT("PeoplesMorale","GLOBAL",10)
GlobalGT("PeoplesMorale","GLOBAL",4)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN EXIT
END

IF ~GlobalGT("PeoplesMorale","GLOBAL",9)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN EXIT
END
