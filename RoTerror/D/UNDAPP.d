BEGIN ~UNDAPP~

IF ~Global("Sfquestbd","GLOBAL",5)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Sfquestbd","GLOBAL",6)~ EXIT
END

IF ~Global("Sfquestbd","GLOBAL",7)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("Sfquestbd","GLOBAL",8)~ EXIT
END

IF ~Global("Sfquestbd","GLOBAL",9)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("Sfquestbd","GLOBAL",10)~ EXIT
END

IF ~Global("Sfquestbd","GLOBAL",11)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("Sfquestbd","GLOBAL",12)~ EXIT
END

IF ~Global("Sfquestbd","GLOBAL",13)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~SetGlobal("Sfquestbd","GLOBAL",14)~ EXIT
END

IF ~Global("Sfquestbd","GLOBAL",15)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~SetGlobal("Sfquestbd","GLOBAL",16)~ EXIT
END

IF ~Global("Sfquestbd","GLOBAL",17)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN DO ~SetGlobal("Sfquestbd","GLOBAL",18)~ EXIT
END

IF ~Global("Sfquestbd","GLOBAL",19)~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN DO ~SetGlobal("Sfquestbd","GLOBAL",20)~ EXIT
END

IF ~Global("Sfquestbd","GLOBAL",21)~ THEN BEGIN 8
  SAY @8
  IF ~~ THEN DO ~SetGlobal("Sfquestbd","GLOBAL",22)~ EXIT
END

IF ~Global("Sfquestbd","GLOBAL",23)~ THEN BEGIN 9
  SAY @9
  IF ~~ THEN DO ~SetGlobal("Sfquestbd","GLOBAL",24)~ EXIT
END

IF ~Global("Sfquestbd","GLOBAL",25)~ THEN BEGIN 10
  SAY @10
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @11
  IF ~~ THEN DO ~SetGlobal("Sfquestbd","GLOBAL",26)~ EXIT
END

IF ~Global("Igottac","GLOBAL",1)~ THEN BEGIN 12
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Igottac","GLOBAL",2)~ EXIT
END
