BEGIN ~ENTER2P~

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~!InParty("Jarlax2")~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~JoinParty()~ EXIT
  IF ~InParty("Jarlax2")~ THEN REPLY @1 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @4
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXTERN ~JARLAX2P~ 3
END

IF ~~ THEN BEGIN 3 // from: JARLAX2P
  SAY @5
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~Global("KickedOut","LOCALS",0)
HappinessLT(Myself,-290)~ THEN BEGIN 4
  SAY @6 
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXTERN ~JARLAX2P~ 4
END
