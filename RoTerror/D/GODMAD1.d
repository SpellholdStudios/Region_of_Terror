BEGIN ~GODMAD1~

IF ~Global("PlayGame","RA5003",0)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1 
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2 
  IF ~~ THEN REPLY @3 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.1 2.2
  SAY @11
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 18
END

IF ~~ THEN BEGIN 6 // from: 15.2 12.3 3.2 2.3
  SAY @15
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0 3.0 2.0
  SAY @17
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @18
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @19
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @20
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 17.0 15.0 12.0
  SAY @25
  IF ~~ THEN DO ~SetGlobal("PlayGame","RA5003",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 17.1 12.1
  SAY @26
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 16
  IF ~~ THEN REPLY @29 GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 15.1 12.2
  SAY @30
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @33 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.2 5.1
  SAY @34
  IF ~~ THEN EXIT
END

IF ~Global("PlayGame","RA5003",1)
!Global("Shelfone","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 19
  SAY @35
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @36
  IF ~~ THEN DO ~SetGlobal("PlayGame1","RA5003",1)~ EXIT
END

IF ~Global("Shelfone","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 21
  SAY @37
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @38
  IF ~~ THEN DO ~SetGlobal("PlayGame","RA5003",2)
SetGlobal("Shelfone","RA5003",0)
SetGlobal("shelftwo","RA5003",0)
SetGlobal("shelfthree","RA5003",0)
SetGlobal("shelffour","RA5003",0)
SetGlobal("shelffive","RA5003",0)
SetGlobal("shelfsix","RA5003",0)
SetGlobal("shelfseven","RA5003",0)
SetGlobal("shelfeight","RA5003",0)
SetGlobal("PlayGame1","RA5003",0)~ EXIT
END

IF ~Global("PlayGame","RA5003",2)
!Global("Shelftwo","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 23
  SAY @39
  IF ~~ THEN DO ~SetGlobal("PlayGame2","RA5003",1)~ EXIT
END

IF ~Global("Shelftwo","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 24
  SAY @37
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @38
  IF ~~ THEN DO ~SetGlobal("PlayGame","RA5003",3)
SetGlobal("Shelfone","RA5003",0)
SetGlobal("shelftwo","RA5003",0)
SetGlobal("shelfthree","RA5003",0)
SetGlobal("shelffour","RA5003",0)
SetGlobal("shelffive","RA5003",0)
SetGlobal("shelfsix","RA5003",0)
SetGlobal("shelfseven","RA5003",0)
SetGlobal("shelfeight","RA5003",0)
SetGlobal("PlayGame2","RA5003",0)~ EXIT
END

IF ~Global("PlayGame","RA5003",3)
!Global("Shelfthree","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 26
  SAY @40
  IF ~~ THEN DO ~SetGlobal("PlayGame3","RA5003",1)~ EXIT
END

IF ~Global("Shelfthree","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 27
  SAY @37
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @38
  IF ~~ THEN DO ~SetGlobal("PlayGame","RA5003",4)
SetGlobal("Shelfone","RA5003",0)
SetGlobal("shelftwo","RA5003",0)
SetGlobal("shelfthree","RA5003",0)
SetGlobal("shelffour","RA5003",0)
SetGlobal("shelffive","RA5003",0)
SetGlobal("shelfsix","RA5003",0)
SetGlobal("shelfseven","RA5003",0)
SetGlobal("shelfeight","RA5003",0)
SetGlobal("PlayGame3","RA5003",0)~ EXIT
END

IF ~Global("PlayGame","RA5003",4)
!Global("Shelffour","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 29
  SAY @41
  IF ~~ THEN DO ~SetGlobal("PlayGame4","RA5003",1)~ EXIT
END

IF ~Global("Shelffour","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 30
  SAY @37
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @38
  IF ~~ THEN DO ~SetGlobal("PlayGame","RA5003",5)
SetGlobal("Shelfone","RA5003",0)
SetGlobal("shelftwo","RA5003",0)
SetGlobal("shelfthree","RA5003",0)
SetGlobal("shelffour","RA5003",0)
SetGlobal("shelffive","RA5003",0)
SetGlobal("shelfsix","RA5003",0)
SetGlobal("shelfseven","RA5003",0)
SetGlobal("shelfeight","RA5003",0)
SetGlobal("PlayGame4","RA5003",0)~ EXIT
END

IF ~Global("PlayGame","RA5003",5)
!Global("Shelffive","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 32
  SAY @42
  IF ~~ THEN DO ~SetGlobal("PlayGame5","RA5003",1)~ EXIT
END

IF ~Global("Shelffive","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 33
  SAY @37
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @38
  IF ~~ THEN DO ~SetGlobal("PlayGame","RA5003",6)
SetGlobal("Shelfone","RA5003",0)
SetGlobal("shelftwo","RA5003",0)
SetGlobal("shelfthree","RA5003",0)
SetGlobal("shelffour","RA5003",0)
SetGlobal("shelffive","RA5003",0)
SetGlobal("shelfsix","RA5003",0)
SetGlobal("shelfseven","RA5003",0)
SetGlobal("shelfeight","RA5003",0)
SetGlobal("PlayGame5","RA5003",0)~ EXIT
END

IF ~Global("PlayGame","RA5003",6)
!Global("Shelfsix","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 35
  SAY @43
  IF ~~ THEN DO ~SetGlobal("PlayGame6","RA5003",1)~ EXIT
END

IF ~Global("Shelfsix","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 36
  SAY @37
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @38
  IF ~~ THEN DO ~SetGlobal("PlayGame","RA5003",7)
SetGlobal("Shelfone","RA5003",0)
SetGlobal("shelftwo","RA5003",0)
SetGlobal("shelfthree","RA5003",0)
SetGlobal("shelffour","RA5003",0)
SetGlobal("shelffive","RA5003",0)
SetGlobal("shelfsix","RA5003",0)
SetGlobal("shelfseven","RA5003",0)
SetGlobal("shelfeight","RA5003",0)
SetGlobal("PlayGame6","RA5003",0)~ EXIT
END

IF ~Global("PlayGame","RA5003",7)
!Global("Shelfseven","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 38
  SAY @44
  IF ~~ THEN DO ~SetGlobal("PlayGame7","RA5003",1)~ EXIT
END

IF ~Global("Shelfseven","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 39
  SAY @37
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY @38
  IF ~~ THEN DO ~SetGlobal("PlayGame","RA5003",8)
SetGlobal("Shelfone","RA5003",0)
SetGlobal("shelftwo","RA5003",0)
SetGlobal("shelfthree","RA5003",0)
SetGlobal("shelffour","RA5003",0)
SetGlobal("shelffive","RA5003",0)
SetGlobal("shelfsix","RA5003",0)
SetGlobal("shelfseven","RA5003",0)
SetGlobal("shelfeight","RA5003",0)
SetGlobal("PlayGame7","RA5003",0)~ EXIT
END

IF ~Global("PlayGame","RA5003",8)
!Global("Shelfeight","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 41
  SAY @45
  IF ~~ THEN DO ~SetGlobal("PlayGame8","RA5003",1)~ EXIT
END

IF ~Global("Shelfeight","RA5003",2)
!Global("Wrongansw","RA5003",1)~ THEN BEGIN 42
  SAY @46 
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY @47 
  IF ~~ THEN DO ~GiveItemCreate("NewKat01",LastTalkedToBy,0,0,0)
SetGlobal("PlayGame","RA5003",9)
SetGlobal("Shelfone","RA5003",0)
SetGlobal("shelftwo","RA5003",0)
SetGlobal("shelfthree","RA5003",0)
SetGlobal("shelffour","RA5003",0)
SetGlobal("shelffive","RA5003",0)
SetGlobal("shelfsix","RA5003",0)
SetGlobal("shelfseven","RA5003",0)
SetGlobal("shelfeight","RA5003",0)
SetGlobal("PlayGame8","RA5003",0)~ EXIT
END

IF ~Global("Wrongansw","RA5003",1)~ THEN BEGIN 44
  SAY @48
  IF ~~ THEN DO ~SetGlobal("PlayGame","RA5003",1)
SetGlobal("Wrongansw","RA5003",0)~ EXIT
END
