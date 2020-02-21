// AELOTUS.DLG ************************************************************
ADD_TRANS_ACTION ~AELOTUS~ BEGIN 4 END BEGIN 0 END ~SetGlobal("Readyfermything","AR0020",1)~
//*************************************************************************

// AERIEJ.DLG  ************************************************************
APPEND ~AERIEJ~
IF ~~ THEN BEGIN s219
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Startmd","GLOBAL",1)
SetGlobal("FigAer","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN s220
  SAY @1
  IF ~~ THEN DO ~SetGlobal("FigAer","GLOBAL",17)~ EXIT
END

IF ~~ THEN BEGIN s221
  SAY @2
  IF ~~ THEN DO ~SetGlobal("FigAer","GLOBAL",17)~ EXIT
END
END
//*************************************************************************

// AERIEP.DLG  ************************************************************
ADD_TRANS_TRIGGER ~AERIEP~ 4
~!AreaCheck("RR3302")
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
!AreaCheck("RA5620")~ DO 0
//*************************************************************************

// ANOMENP.DLG  ************************************************************
ADD_TRANS_TRIGGER ~ANOMENP~ 1
~!AreaCheck("RR3302")
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
!AreaCheck("RA5620")~ DO 0
//*************************************************************************

// CERNDP.DLG  ************************************************************
ADD_TRANS_TRIGGER ~CERNDP~ 8
~!AreaCheck("RR3302")
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
!AreaCheck("RA5620")~ DO 0
//*************************************************************************

// DOGHMA.DLG  ************************************************************
EXTEND_BOTTOM ~DOGHMA~ 0

  IF ~Global("AlissaQuest","GLOBAL",5)
InParty("Alissa1")
IsValidForPartyDialog("Alissa1")~ THEN REPLY @3 EXTERN ~ALISSA1J~ 9

END


APPEND ~DOGHMA~

IF ~~ THEN BEGIN s18
  SAY @4
  IF ~~ THEN EXTERN ~ALISSA1J~ 10
END

IF ~~ THEN BEGIN s19
  SAY @5
  IF ~~ THEN EXTERN ~ALISSA1J~ 11
END

IF ~~ THEN BEGIN s20
  SAY @6
  IF ~~ THEN EXTERN ~ALISSA1J~ 12
END

IF ~~ THEN BEGIN s21
  SAY @7
  IF ~~ THEN EXTERN ~ALISSA1J~ 13
END

IF ~~ THEN BEGIN s22
  SAY @8
  IF ~~ THEN EXTERN ~ALISSA1J~ 14
END

IF ~~ THEN BEGIN s23
  SAY @9
  IF ~~ THEN EXTERN ~ALISSA1J~ 15
END

IF ~~ THEN BEGIN s24
  SAY @10
  IF ~~ THEN DO ~EraseJournalEntry(74337)
EraseJournalEntry(74338)
SetGlobal("AlissaQuest","GLOBAL",6)~ SOLVED_JOURNAL @11 EXIT
END

END
//*************************************************************************

// EDWINJ.DLG  ************************************************************
APPEND ~EDWINJ~

IF ~~ THEN BEGIN s188
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Startmd","GLOBAL",1)
SetGlobal("FigEdw","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN s189
  SAY @13
  IF ~~ THEN EXTERN ~STAFFM11~ 9
END

IF ~~ THEN BEGIN s190
  SAY @14
  IF ~~ THEN DO ~SetGlobal("FigEdw","GLOBAL",17)~ EXIT
END

IF ~~ THEN BEGIN s191
  SAY @15
  IF ~~ THEN DO ~SetGlobal("FigEdw","GLOBAL",17)~ EXIT
END

END
//*************************************************************************

// EDWINP.DLG  ************************************************************
ADD_TRANS_TRIGGER ~EDWINP~ 5
~!AreaCheck("RR3302")
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
!AreaCheck("RA5620")~ DO 0
//*************************************************************************

// HAERDAP.DLG  ************************************************************
ADD_TRANS_TRIGGER ~HAERDAP~ 5
~!AreaCheck("RR3302")
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
!AreaCheck("RA5620")~ DO 0 1
//*************************************************************************

// JANP.DLG  ************************************************************
ADD_TRANS_TRIGGER ~JANP~ 39
~!AreaCheck("RR3302")
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
!AreaCheck("RA5620")~ DO 0
//*************************************************************************

// KELDORP.DLG  ************************************************************
ADD_TRANS_TRIGGER ~KELDORP~ 28
~!AreaCheck("RR3302")
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
!AreaCheck("RA5620")~ DO 0
//*************************************************************************

// KORGANJ.DLG  ************************************************************
APPEND ~KORGANJ~

IF ~~ THEN BEGIN s222
  SAY @16
  IF ~~ THEN DO ~SetGlobal("AbaKor","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN s223
  SAY @17
  IF ~~ THEN DO ~SetGlobal("AbaKor","GLOBAL",10)~ EXIT
END

IF ~~ THEN BEGIN s224
  SAY @18
  IF ~~ THEN DO ~SetGlobal("AbaKor","GLOBAL",18)~ EXIT
END

IF ~~ THEN BEGIN s225
  SAY @19
  IF ~~ THEN DO ~SetGlobal("AbaKor","GLOBAL",26)~ EXIT
END

END
//*************************************************************************

// KORGANP.DLG  ************************************************************
ADD_TRANS_TRIGGER ~KORGANP~ 10
~!AreaCheck("RR3302")
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
!AreaCheck("RA5620")~ DO 0
//*************************************************************************

// MAZZYJ.DLG  ************************************************************
APPEND ~MAZZYJ~

IF ~~ THEN BEGIN s204
  SAY @20
  IF ~~ THEN DO ~SetGlobal("AbaMaz","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN s205
  SAY @21
  IF ~~ THEN DO ~SetGlobal("AbaMaz","GLOBAL",10)~ EXIT
END

IF ~~ THEN BEGIN s206
  SAY @22
  IF ~~ THEN DO ~SetGlobal("AbaMaz","GLOBAL",18)~ EXIT
END

IF ~~ THEN BEGIN s207
  SAY @22
  IF ~~ THEN DO ~SetGlobal("AbaMaz","GLOBAL",26)~ EXIT
END

END
//*************************************************************************

// MINSCP.DLG  ************************************************************
ADD_TRANS_TRIGGER ~MINSCP~ 7
~!AreaCheck("RR3302")
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
!AreaCheck("RA5620")~ DO 0
//*************************************************************************

// NALIAP.DLG  ************************************************************
ADD_TRANS_TRIGGER ~NALIAP~ 17
~!AreaCheck("RR3302")
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
!AreaCheck("RA5620")~ DO 0
//*************************************************************************

// VALYGARP.DLG  ************************************************************
ADD_TRANS_TRIGGER ~VALYGARP~ 0
~!AreaCheck("RR3302")
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
!AreaCheck("RA5620")~ 1 DO 0
//*************************************************************************

// VICONIP.DLG  ************************************************************
ADD_TRANS_TRIGGER ~VICONIP~ 0
~!AreaCheck("RR3302")
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
!AreaCheck("RA5620")~ DO 0
//*************************************************************************

// YOSHP.DLG  ************************************************************
ADD_TRANS_TRIGGER ~YOSHP~ 6
~!AreaCheck("RR3302")
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
!AreaCheck("RA5620")~ DO 0
//*************************************************************************


