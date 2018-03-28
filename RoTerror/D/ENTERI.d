BEGIN ~ENTERI~

IF ~~ THEN BEGIN 0 // from: JARLAX_R
  SAY @0 
  IF ~~ THEN EXTERN ~DRIZ2J~ 122
END

IF ~~ THEN BEGIN 1 // from: DRIZ2J
  SAY @1 
  IF ~~ THEN EXTERN ~DRIZ2J~ 123
END

IF ~Global("EntandDri","GLOBAL",1)~ THEN BEGIN 2
  SAY @2 
  IF ~~ THEN DO ~EscapeAreaMove("RR4005",409,362,12)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: DRIZ2J
  SAY @3 
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4
  IF ~~ THEN EXTERN ~DRIZ2J~ 125
END

IF ~~ THEN BEGIN 5 // from: DRIZ2J
  SAY @5 
  IF ~~ THEN DO ~Enemy()~ EXIT
END

/*IF ~~ THEN BEGIN 6 // from:
  SAY ~I'm badly wounded... It is time to end this.~ [Enteri4]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY ~Catti-Brie! It's your turn now. Come!~ [Enteri5]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY ~Catti-Brie, kill him.~ [Enteri6]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY ~Damn!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY ~Try to damage me now!~ [Enteri7]
  IF ~~ THEN EXIT
END              */
