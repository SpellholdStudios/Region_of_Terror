BEGIN ~BRETOR1~

IF ~Global("Brothertimeriwd","GLOBAL",5)
CombatCounter(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN DO ~SetGlobal("Brothertimeriwd","GLOBAL",6)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @4
  IF ~~ THEN DO ~SetGlobal("Brothertimeriwd","GLOBAL",15)
EscapeArea()~ EXIT
END

IF ~Global("Brothertimeriwd","GLOBAL",7)
AreaCheck("RA5100")~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~SetGlobal("Brothertimeriwd","GLOBAL",9)
EscapeArea()~ EXIT
END

IF ~Global("Brothertimeriwd","GLOBAL",10)~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN DO ~SetGlobal("Brothertimeriwd","GLOBAL",9)
EscapeArea()~ EXIT
END
