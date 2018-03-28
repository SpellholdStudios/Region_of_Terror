BEGIN ~BRUNCUS1~

IF ~Global("SmithApprsc","GLOBAL",2)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN DO ~SetGlobal("SmithApprsc","GLOBAL",3)~ EXTERN ~BRUNDOR~ 132
END
