BEGIN ~BREVIL6~

IF ~GlobalLT("PeoplesMorale","GLOBAL",5)
GlobalGT("PeoplesMorale","GLOBAL",-6)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~GlobalLT("PeoplesMorale","GLOBAL",-5)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~GlobalLT("PeoplesMorale","GLOBAL",10)
GlobalGT("PeoplesMorale","GLOBAL",4)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~GlobalLT("PeoplesMorale","GLOBAL",15)
GlobalGT("PeoplesMorale","GLOBAL",9)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~GlobalGT("PeoplesMorale","GLOBAL",14)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXIT
END
