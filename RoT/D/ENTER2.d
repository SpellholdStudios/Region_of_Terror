BEGIN ~ENTER2~

IF ~Global("Bedrinofri","GLOBAL",3)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~DRIZI2~ 0
END

IF ~Global("Bedrinofri","GLOBAL",10)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("Bedrinofri","GLOBAL",11)
AddXPObject(Player1,100000)
AddXPObject(Player2,100000)
AddXPObject(Player3,100000)
AddXPObject(Player4,100000)
AddXPObject(Player5,100000)
AddXPObject(Player6,100000)
JoinParty()~ SOLVED_JOURNAL @575863 EXIT
END

IF ~~ THEN BEGIN 2 // from: JARLAX_R
  SAY @2
  IF ~~ THEN DO ~SetGlobal("Bedrinofri","GLOBAL",11)
AddXPObject(Player1,100000)
AddXPObject(Player2,100000)
AddXPObject(Player3,100000)
AddXPObject(Player4,100000)
AddXPObject(Player5,100000)
AddXPObject(Player6,100000)
JoinParty()~ SOLVED_JOURNAL @575863 EXIT
END
