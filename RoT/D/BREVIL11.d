BEGIN ~BREVIL11~

IF ~GlobalLT("PeoplesMorale","GLOBAL",10)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~GlobalGT("PeoplesMorale","GLOBAL",9)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END
