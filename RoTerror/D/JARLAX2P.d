BEGIN ~JARLAX2P~

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~!InParty("Enter2")~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~JoinParty()~ EXIT
  IF ~InParty("Enter2")~ THEN REPLY @1 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @4
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXTERN ~ENTER2P~ 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @5
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @6
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END
