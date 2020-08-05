" Vim syntax file
" Language:     CBOT
" Maintainer:   Kompowiec2 <diasp@o2.pl>
" Filenames:    *.cbot
" Created:      2015 August 28
" Last Change:  2020.03.22
" Revision:     1.6

if !exists("main_syntax")
if version < 600
syntax clear
elseif exists("b:current_syntax")
finish
endif
let main_syntax = 'cbot'
endif

runtime! syntax/c.vim

syntax case match

"CBOT lang
syntax keyword CbotType point object produce cmdline ismovie repeat drive
syn keyword CbotBuildings Houston SpaceShip BotFactory ResearchCenter RadarStation ExchangePost RepairCenter DefenseTower AutoLab PowerStation PowerPlant NuclearPlant Converter Derrick PowerCaptor Vault StartArea GoalArea Target1 AlienNest
syn keyword CbotMessages DisplayMessage DisplayWarning DisplayInfo DisplayError
syn keyword CbotPortable TitaniumOre UraniumOre Titanium PowerCell NuclearCell OrgaMatter BlackBox TNT KeyA KeyB KeyC KeyD
syn keyword CbotPracticeBot PracticeBot TargetBot WheeledGrabber TrackedGrabber WingedGrabber LeggedGrabber WheeledSniffer TrackedSniffer WingedSniffer LeggedSniffer WheeledShooter TrackedShooter WingedShooter LeggedShooter WheeledOrgaShooter TrackedOrgaShooter WingedOrgaShooter LeggedOrgaShooter Subber recycler Shielder Thumper PhazerShooter WheeledBuilder TrackedBuilder WingedBuilder LeggedBuilder DrawerBot
syn keyword CbotEnemies AlienQueen AlienEgg AlienAnt AlienSpider AlienWasp AlienWorm
syn keyword CbotMisc Me Mine Barrier Wreck Ruin
syn keyword CbotFlags BlueFlag RedFlag GreenFlag YellowFlag VioletFlag WayPoint Target2 EnergySpot TitaniumSpot UraniumSpot
syn keyword CbotMisc2 ResearchOrgaShooter ResearchLegged ResearchTracked ResearchWinged ResearchShooter ResearchDefenseTower ResearchNuclearPlant ResearchSubber ResearchShielder ResearchThumper ResearchPhazerShooter 
syn keyword CbotBots detect radar radarall search direction distance distance2d wait move turn goto motor jet message retobject errmode abstime ipf pendown penup pencolor penwidth canresearch researched
syn keyword CbotTopo space flatspace topo flatground 
syn keyword CbotRobots grab drop sniff thump recycle shield fire aim build canbuild buildingenabled
syn keyword CbotObjects factory research takeoff busy
syn keyword CbotExchange receive send testinfo deleteinfo
syn keyword CbotClasses class public private protected static synchronized new extends extern
syn keyword CbotPoint this super
syn keyword CbotStr strlen strleft strright strmid strfind strval strupper strlower
syn keyword CbotFiles open close writeln readln eof deletefile
syn keyword CbotMath rand pow sqrt floor ceil round trunc sin cos tan asin acos atan atan2
syn keyword cRepeat try catch
syn keyword CbotError CBOTDEBUGDD .bmp

if version >= 508 || !exists("did_xxd_syntax_inits")
  if version < 508
    let did_xxd_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

"CBOT
 HiLink CbotType             Type
 HiLink CbotBuildings        Constant
 HiLink CbotMessages         Constant
 HiLink CbotPortable         Constant
 HiLink CbotRobots           Constant
 HiLink CbotEnemies          Constant
 HiLink CbotMisc             Constant
 HiLink CbotFlags            Constant
 HiLink CbotMisc2            Constant
 HiLink CbotBots             Statement
 HiLink CbotTopo             Statement
 HiLink CbotRobots           Statement
 HiLink CbotObjects          Statement
 HiLink CbotExchange         Statement
 HiLink CbotClasses          Function
 HiLink CbotPoint            PreProc
 HiLink CbotStr              Statement
 HiLink CbotFiles            Statement
 HiLink CbotMath             Statement
 HiLink CbotError            Error
 delcommand HiLink
endif
