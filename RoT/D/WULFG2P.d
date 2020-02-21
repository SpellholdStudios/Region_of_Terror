BEGIN ~WULFG2P~

IF ~Global("KickedOut","LOCALS",0)
!Global("FinalBattleofitemp","GLOBAL",7)
!Global("Wulfgargone","GLOBAL",1)~ THEN BEGIN 3
  SAY @0
  IF ~~ THEN REPLY @1 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @2 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("KickedOut","LOCALS",1)
SetGlobal("WulfgarOut","GLOBAL",1)~ EXIT
  IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")
!AreaCheck("RR3302")
!AreaCheck("RR3303")
!AreaCheck("RR3304")
!AreaCheck("RR3700")
!AreaCheck("RR3701")
!AreaCheck("RR3702")
!AreaCheck("RR3801")
!AreaCheck("RA3010")
!AreaCheck("RA3011")
!AreaCheck("RA3012")
!AreaCheck("RA3013")
!AreaCheck("RA3014")
!AreaCheck("RA3015")
!AreaCheck("RA3703")
!AreaCheck("RA3704")
!AreaCheck("RA3705")
!AreaCheck("RA3706")
!AreaCheck("RA3707")
!AreaCheck("RA3708")
!AreaCheck("RA3709")
!AreaCheck("RA3710")
!AreaCheck("RA3711")
!AreaCheck("RA3750")
!AreaCheck("RA5100")
!AreaCheck("RA5101")
!AreaCheck("RA5102")
!AreaCheck("RA5103")
!AreaCheck("RA5104")
!AreaCheck("RA5105")
!AreaCheck("RA5106")
!AreaCheck("RA5107")
!AreaCheck("RA5400")
!AreaCheck("RA5401")
!AreaCheck("RA5410")
!AreaCheck("RA5411")
!AreaCheck("RA5412")
!AreaCheck("RA5413")
!AreaCheck("RA5414")
!AreaCheck("RA5415")
!AreaCheck("RA5416")
!AreaCheck("RA5500")
!AreaCheck("RA5501")
!AreaCheck("RA5600")
!AreaCheck("RA5601")
!AreaCheck("RA5602")
!AreaCheck("RA5603")
!AreaCheck("RA5610")
!AreaCheck("RA5611")
!AreaCheck("RA5620")~ THEN REPLY @5 DO ~SetGlobal("KickedOut","LOCALS",1)
SetGlobal("WulfgarOut","GLOBAL",1)
EscapeAreaMove("AR0406",1342,1728,2)~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)
!Global("FinalBattleofitemp","GLOBAL",7)
!Global("Wulfgargone","GLOBAL",1)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN REPLY @7 DO ~SetGlobal("KickedOut","LOCALS",0)
SetGlobal("WulfgarOut","GLOBAL",0)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @8 EXIT
END

IF ~Global("KickedOut","LOCALS",4)
!Global("FinalBattleofitemp","GLOBAL",7)~ THEN BEGIN 7
  SAY @9
  IF ~!InParty("Driz2")~ THEN REPLY @10 GOTO 8
  IF ~InParty("Driz2")~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @11
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",4)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @12
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",5)
JoinParty()~ EXIT
END

IF ~Global("KickedOut","LOCALS",5)
!Global("FinalBattleofitemp","GLOBAL",7)~ THEN BEGIN 10
  SAY @13
  IF ~~ THEN GOTO 3
END

IF ~Global("FinalBattleofitemp","GLOBAL",7)~ THEN BEGIN 11
  SAY @14
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("Wulfgargone","GLOBAL",1)~ THEN BEGIN 12
  SAY @15
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @16
  IF ~~ THEN DO ~SetGlobal("Wulfgargone","GLOBAL",2)
JoinParty()~ EXIT
END
