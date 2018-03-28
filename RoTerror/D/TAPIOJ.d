BEGIN ~TAPIOJ~

IF ~~ THEN BEGIN 0 // from: STAFFM8
  SAY @0
  IF ~~ THEN DO ~SetGlobal("AbaTap","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 1 // from: STAFFM8
  SAY @0
  IF ~~ THEN DO ~SetGlobal("AbaTap","GLOBAL",10)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: STAFFM8
  SAY @0
  IF ~~ THEN DO ~SetGlobal("AbaTap","GLOBAL",18)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: STAFFM8
  SAY @0
  IF ~~ THEN DO ~SetGlobal("AbaTap","GLOBAL",26)~ EXIT
END
