********************************************
*** v 3.0 EE - 2017, July
********************************************
- baseline RoT 2.1
- compatibility with EE/EET
- files patched with BWFixpack corrections (except tp2, see point below)
- files patched and amended by Ikki's patch
- tp2 from Ikki's patch
- gui folder removed (not used anymore)
- added folder PVRZ for new Tis files for EE games
- amended tp2 to use Handle Tileset for old game but copy new PVRZ folder contents for EE
- moved TP2 into folder
- cleaned package from some unused files
- cleaned tp2 from unused (commented out) code for better readability
********************************************
*** v 2.1 - 2008, June
********************************************
1) Spanish translation. Spanish translator prefers to be anonymous.

********************************************
*** v 2.1 - 2008
********************************************
1) German translation by Gerri, Telperion, Leonardo Watson.

********************************************
*** v 2.1
********************************************
1) More flexible AR2601.BCS patching.

2) Strong requirement for having no more than 5 members in party for RoT's cutscenes removed.
   ENTAR1.BAF, ENTERJ.BAF - cutscene rebuilt (without JoinParty()).
   17 cutscene CREs fixed (ClearFogOfWar effect added).

3) NPC's soundsets fixed (error was caused by incorrect TP2 traification):
   Bruenor, Catti-Brie, Drizzt, Entreri, Jarlaxle, Mordragon, Randall, Regis, Tapio, Wulfgar.

4) Town crier (AR0700) is being spawned in an easy way to find him.

5) It's enough for MakeUnselectable() for various cutscenes and scripts to cover Player1-6, not
   a list of all known NPCs:  ENDSNE, ENDISN, RA4300, RA4301, RA4302, RR4005.

6) Full ToB PDIALOG.2DA patching.

7) Broken Dead() triggers fixed: bBALDUR, GODAVA1, RA4300.

8) RR4002.BAF. Items destruction sequence optimized.

9) "weidu --out ROT-TIS1 --biff-get-rest AR0334.tis" added to .bat to extract that TIS from the compressed BIF.

10) Translation fixed for all scripts in \SNIP\BAF\ (SCRIPT.TRA)

11) ALENNA.D - fixed several dialogue flows (Sandman - http://forums.spellholdstudios.net/index.php?showtopic=22078&st=20)
12) NEWPO01.ITM - can be used by Wizardslayers (Healing potion).
13) SPCL379.SPL - Planar Druid fire resistance bonus should be 50%, not 25 as it was.
14) SINGER bard kit Bard Songs fixed.

15) CLOUDBA.BAM fixed - caused CTD in ra5003.bcs cutscene.

16) Worldmap entries and links revised to introduce more reasonable travel times.
    Cross-link table for SoS, TDD and CtB added.

17) Russian translation by www.aerie-ru.info: Alex, Alina, Badgert, Mercuzium, Serkos and Sviatozar.

18) Now Worldmap v6 > is a mandatory component to access RoT areas in any configuration of mods.


//-------------------------------------------------------------------------------------------------------
// version history
//-------------------------------------------------------------------------------------------------------
                       REGION OF TERROR README
                                V2.0
                      (a note from King Diamond)


As a big lover of all that is really BIG :P I've decided to give this mod
another chance to survive in the modern environments (you know -
"generation Pepsi", "Greece - European Champions" and stuff...)

So, here is another humble attempt not to screw anything that is supposed to work
properly.

1st, as you may already realized, a size of the mod was dramatically reduced
from >600Mb to near 328Mb without loosing *anything*.

2nd, all *technical* compatibility issues with many large mods are
solved. You may expect flawless functionality together with BGT-WeiDU 1.00,
CtB v1.7, TDD v1.10, SOS v1.10, TS-BP v6.04.01

There *could* be some minor plot inconsistences here and there, but plz don't
rely on that too much. ;)

3rd. RoT now requires full ToB installation (sorry, no SoA-only support - we're
delivering only the best! :D )

4th. People who played the original or were involved into its development will be
really surprized by some *audible* aspects of the mod (do you?...)

5th. This version includes all original patches.




Some installation notes:

 - if you want to install RoT along with TDD you can't use Kit Packs from both mods.
   Plz choose wich one you want to install. In any case, install RoT AFTER TDD v1.10
   (or later);

 - don't forget to install the latest Worldmap mod from Yacomo/Weigo (v6 or later). 
   Local RoT's WMP just doesn't know about any other mod existance.




Cheers,
and stay heavy,       >:E
               KD

*******************************************************************************
** v2.0 Credits:
*******************************************************************************
  Badgert and
  Serdrick from A.E.R.I.E team (http://aerie-ru.info) - additional help

  KD - WeiDU conversion, bugfixing, blah, blah, blah...

*******************************************************************************
*******************************************************************************
*******************************************************************************
*******************************************************************************

                       REGION OF TERROR README
                                V1.0A
                   (original ReadMe from Gilgamesh)

*******************************************************************************
**  History:
*******************************************************************************
 I began working on this mod in Spring 2002. It is almost completely done
by me and the work took 2,5 years. It was a hobby for me and I worked
when I felt like it.
 TDD and EE were the only mods out when I began working and I have been
using mostly the same methods as in those mods (which are nowadays old-
fashioned). However hopefully some people will be able to enjoy the mod.
 The mod was sheltered by TEAMBG for a long time but after they shut
down I moved to FORGOTTEN WARS. I received most of the help I needed from
the TEAMBG forums.
 I don't speak english as my first language and I've grown alot during the
creation of the mod so you may be able to notice some differences in style
here and there. I've tried to use as good english as possible but it is
not too great. I hope it won't bother anyone much.
 Everything you'll find from the mod is just improvisation. Ideas that
have sprung up from my mind that I have then created in the game. The
Final Fantasies have had some influence for example.
 Unfortunately I didn't like modding and finished only because I refused
to quit. The ToB compatibility and NPC dialogs (banters) were never done.
If they are to be done, I won't be the one who does them.


*******************************************************************************
**  Contents:
*******************************************************************************
The mod is based on the adventures of Drizzt Do'Urden. I've taken some
liberties and the main story is pulled out from a hat. The mod puts in
Drizzt and his companions as playable NPC's and you'll be able to play
with him through the old and new quests. The mod contains several new
big quests and adds in four new cities/villages/towns. There are many
smaller quests and some of the quests have different possibilities for
endings, including the main story. More information can be found on the
website (link is at the bottom of the file).
(Please note, that some parts of the website are very old, including the
screenshots which were taken in 2002).

* 35+ new quests
* Big main story involving Drizzt and the main character
* 30-40 hours of additional gameplay
* Hundreds of new items
* New spells (mostly kit-specific)
* 20+ new kits
* 160+ new areas
* 10 new NPC's
* Special features (check the website)
* Mod maker's house (Use codes and enter area "RA4400")
* SECRETS!!!!


*******************************************************************************
**  Credits:
*******************************************************************************
MOD DEVELOPER / CREATOR : "GILGAMESH"

WEBSITE DESIGN : Bruno Andrés Bernardi ("Cuervo_br")

INSTALLER BY: "Wiskas"

VOICE ACTORS :
Clinton Wolf.................Drizzt Do'Urden
Bruno Bernardi...............Artemis Entreri
Steven Andrews...............Wulfgar
Gregg Kincaid ...............Bruenor
Valeska Scholl ..............Catti-Brie
Robert Dupuis ...............Regis
Gregg Kincaid ...............Randall
Valeska Scholl ..............Alissa
Robert Dupuis ...............Mordragon
Robert Dupuis ...............Jarlaxle


PORTRAIT ART : JEROMIA PHAIR (aka Deity) and various artists around the web;
if you want special credit, please contact me (instructions at the end of
this file)


SPECIAL THANK'S TO :
Max Schnur (for scripting help in the early stages of the mod creating)
Tapio Perkiömäki (for doing nothing)
Gregg Kincaid (for voice acting in several roles of the mod and writing the smith's apprentice's dialogs)
Jon Olav Hauglid (for trying to help me with an area problem)
Lorne Ledger (for the area art of the Spirit Soaring [outside] and the area north from Bremen)
Bruno Bernardi (for the original idea of the Apprentice, thank's to him I invented a big new feature, the quest for the Eye of a God)
Robert Dupuis (for voice acting in several roles in the mod)
Valeska Scholl (for giving the much needed voice's for the two female NPCs)
MindFlayer (for creating two areas for the mod)
Avenger and Per Olofsson (for tispack)
Nullsoft Inc (for providing the installer maker)
TEAM BG (for hosting both our site and forum, and forproviding the best IE editing tools in the world!)
FORGOTTEN WARS (for taking the mod after TeamBG's death)


A lot of areas, sounds and animations have been taken from other IE games.
There is also one midi - file from the Super Nintendo game Final Fantasy 6.


Websites:
www.forgottenwars.net (the community)
http://www.geocities.com/rotmod2003/ (website of the mod)
http://forums.forgottenwars.net/index.php?showforum=173 (completed mods forums)


How to contact:
pekka_gilgamesh@hotmail.com
or use the forum of the mod
I'd prefer the usage of the forums.

@GILGAMESH (Pekka Syrjänen)
