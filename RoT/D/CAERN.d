BEGIN ~CAERN~

IF ~Global("sadljk","LOCALS",0)
!Global("AllGilgameshbs","LOCALS",13)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~PartyHasItem("BoTapio")~ THEN REPLY @5 GOTO 4
  IF ~PartyHasItem("BoGil1")~ THEN REPLY @6 GOTO 7
  IF ~PartyHasItem("BoGil2")~ THEN REPLY @7 GOTO 10
  IF ~PartyHasItem("BoGil3")~ THEN REPLY @8 GOTO 12
  IF ~PartyHasItem("BoGil4")~ THEN REPLY @9 GOTO 14
  IF ~PartyHasItem("BoGil5")~ THEN REPLY @10 GOTO 16
  IF ~PartyHasItem("BoGil6")~ THEN REPLY @11 GOTO 18
  IF ~PartyHasItem("BoGil7")~ THEN REPLY @12 GOTO 20
  IF ~PartyHasItem("BoGil8")~ THEN REPLY @13 GOTO 22
  IF ~PartyHasItem("BoGil9")~ THEN REPLY @14 GOTO 24
  IF ~PartyHasItem("BoGil10")~ THEN REPLY @15 GOTO 26
  IF ~PartyHasItem("BoGil11")~ THEN REPLY @16 GOTO 28
  IF ~PartyHasItem("BoGil12")~ THEN REPLY @17 GOTO 30
  IF ~PartyHasItem("BoGil13")~ THEN REPLY @18 GOTO 32
  IF ~~ THEN REPLY @19 EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @20
  IF ~~ THEN REPLY @21 EXIT
  IF ~~ THEN REPLY @22 EXIT
END

IF ~Global("sadljk","LOCALS",1)
!Global("AllGilgameshbs","LOCALS",13)~ THEN BEGIN 3
  SAY @23
  IF ~PartyHasItem("BoTapio")~ THEN REPLY @5 GOTO 4
  IF ~PartyHasItem("BoGil1")~ THEN REPLY @6 GOTO 7
  IF ~PartyHasItem("BoGil2")~ THEN REPLY @7 GOTO 10
  IF ~PartyHasItem("BoGil3")~ THEN REPLY @8 GOTO 12
  IF ~PartyHasItem("BoGil4")~ THEN REPLY @9 GOTO 14
  IF ~PartyHasItem("BoGil5")~ THEN REPLY @10 GOTO 16
  IF ~PartyHasItem("BoGil6")~ THEN REPLY @11 GOTO 18
  IF ~PartyHasItem("BoGil7")~ THEN REPLY @12 GOTO 20
  IF ~PartyHasItem("BoGil8")~ THEN REPLY @13 GOTO 22
  IF ~PartyHasItem("BoGil9")~ THEN REPLY @14 GOTO 24
  IF ~PartyHasItem("BoGil10")~ THEN REPLY @15 GOTO 26
  IF ~PartyHasItem("BoGil11")~ THEN REPLY @16 GOTO 28
  IF ~PartyHasItem("BoGil12")~ THEN REPLY @17 GOTO 30
  IF ~PartyHasItem("BoGil13")~ THEN REPLY @18 GOTO 32
  IF ~~ THEN REPLY @24 EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 1.0
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 5
  IF ~~ THEN REPLY @27 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @28
  IF ~~ THEN DO ~TakePartyItem("BoTapio")
DestroyItem("BoTapio")
GiveGoldForce(1000)
SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 30.1 28.1 26.1 24.1 22.1 20.1 18.1 16.1 14.1 12.1 10.1 4.1
  SAY @29
  IF ~~ THEN DO ~SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1 1.1
  SAY @30
  IF ~~ THEN REPLY @26 DO ~IncrementGlobal("AllGilgameshbs","LOCALS",1)~ GOTO 8
  IF ~~ THEN REPLY @27 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @28
  IF ~~ THEN DO ~TakePartyItem("BoGil1")
DestroyItem("BoGil1")
GiveGoldForce(1000)
SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 32.1 7.1
  SAY @31
  IF ~~ THEN DO ~SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2 1.2
  SAY @32
  IF ~~ THEN REPLY @26 DO ~IncrementGlobal("AllGilgameshbs","LOCALS",1)~ GOTO 11
  IF ~~ THEN REPLY @27 GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @28
  IF ~~ THEN DO ~TakePartyItem("BoGil2")
DestroyItem("BoGil2")
GiveGoldForce(500)
SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 1.3
  SAY @32
  IF ~~ THEN REPLY @26 DO ~IncrementGlobal("AllGilgameshbs","LOCALS",1)~ GOTO 13
  IF ~~ THEN REPLY @27 GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @28
  IF ~~ THEN DO ~TakePartyItem("BoGil3")
DestroyItem("BoGil3")
GiveGoldForce(500)
SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.4 1.4
  SAY @32
  IF ~~ THEN REPLY @26 DO ~IncrementGlobal("AllGilgameshbs","LOCALS",1)~ GOTO 15
  IF ~~ THEN REPLY @27 GOTO 6
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @28
  IF ~~ THEN DO ~TakePartyItem("BoGil4")
DestroyItem("BoGil4")
GiveGoldForce(500)
SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.5 1.5
  SAY @32
  IF ~~ THEN REPLY @26 DO ~IncrementGlobal("AllGilgameshbs","LOCALS",1)~ GOTO 17
  IF ~~ THEN REPLY @27 GOTO 6
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @28
  IF ~~ THEN DO ~TakePartyItem("BoGil5")
DestroyItem("BoGil5")
GiveGoldForce(500)
SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 3.6 1.6
  SAY @32
  IF ~~ THEN REPLY @26 DO ~IncrementGlobal("AllGilgameshbs","LOCALS",1)~ GOTO 19
  IF ~~ THEN REPLY @27 GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @28
  IF ~~ THEN DO ~TakePartyItem("BoGil6")
DestroyItem("BoGil6")
GiveGoldForce(500)
SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.7 1.7
  SAY @32
  IF ~~ THEN REPLY @26 DO ~IncrementGlobal("AllGilgameshbs","LOCALS",1)~ GOTO 21
  IF ~~ THEN REPLY @27 GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @28
  IF ~~ THEN DO ~TakePartyItem("BoGil7")
DestroyItem("BoGil7")
GiveGoldForce(500)
SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.8 1.8
  SAY @32
  IF ~~ THEN REPLY @26 DO ~IncrementGlobal("AllGilgameshbs","LOCALS",1)~ GOTO 23
  IF ~~ THEN REPLY @27 GOTO 6
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @28
  IF ~~ THEN DO ~TakePartyItem("BoGil8")
DestroyItem("BoGil8")
GiveGoldForce(500)
SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 3.9 1.9
  SAY @32
  IF ~~ THEN REPLY @26 DO ~IncrementGlobal("AllGilgameshbs","LOCALS",1)~ GOTO 25
  IF ~~ THEN REPLY @27 GOTO 6
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @28
  IF ~~ THEN DO ~TakePartyItem("BoGil9")
DestroyItem("BoGil9")
GiveGoldForce(500)
SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 3.10 1.10
  SAY @32
  IF ~~ THEN REPLY @26 DO ~IncrementGlobal("AllGilgameshbs","LOCALS",1)~ GOTO 27
  IF ~~ THEN REPLY @27 GOTO 6
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @28
  IF ~~ THEN DO ~TakePartyItem("BoGil10")
DestroyItem("BoGil10")
GiveGoldForce(500)
SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 3.11 1.11
  SAY @32
  IF ~~ THEN REPLY @26 DO ~IncrementGlobal("AllGilgameshbs","LOCALS",1)~ GOTO 29
  IF ~~ THEN REPLY @27 GOTO 6
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY @28
  IF ~~ THEN DO ~TakePartyItem("BoGil11")
DestroyItem("BoGil11")
GiveGoldForce(500)
SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 3.12 1.12
  SAY @32
  IF ~~ THEN REPLY @26 DO ~IncrementGlobal("AllGilgameshbs","LOCALS",1)~ GOTO 31
  IF ~~ THEN REPLY @27 GOTO 6
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @28
  IF ~~ THEN DO ~TakePartyItem("BoGil12")
DestroyItem("BoGil12")
GiveGoldForce(500)
SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 3.13 1.13
  SAY @33
  IF ~~ THEN REPLY @26 DO ~IncrementGlobal("AllGilgameshbs","LOCALS",1)~ GOTO 33
  IF ~~ THEN REPLY @27 GOTO 9
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @28
  IF ~~ THEN DO ~TakePartyItem("BoGil13")
DestroyItem("BoGil13")
GiveGoldForce(1000)
SetGlobal("sadljk","LOCALS",1)~ EXIT
END

IF ~Global("AllGilgameshbs","LOCALS",13)~ THEN BEGIN 34
  SAY @34
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @35
  IF ~~ THEN DO ~SetGlobal("AllGilgameshbs","LOCALS",14)~ EXIT
END
