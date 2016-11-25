" Vim syntax file
" Language:     CBOT
" Maintainer:   Kompowiec2 <diasp@o2.pl>
" Filenames:    *.cbot
" URL:		http://www.kompowiec.github.io
" Last Change:  2015 September 30

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

syntax keyword CbotType int float bool string point object extern produce 
syn keyword CbotStatement Houston SpaceShip BotFactory ResearchCenter RadarStation ExchangePost RepairCenter DefenseTower AutoLab PowerStation PowerPlant NuclerPlant Converter Derrick PowerCaptor Vault StartArea GoalArea AlienNest TitaniumOre UraniumOre Titanium PowerCell NuclearCell OrgaMatter BlackBox TNT KeyA KeyB KeyC KeyD PracticeBot TargetBot TrackedGrabber WheeledGrabber WingedGrabber LeggedGrabber WheeledSniffer TrackedSniffer WingedSniffer LeggedSniffer WheeledShooter TrackedShooter WingedShooter LeggedShooter WheeledOrgaShooter TackedOrgaShooter WingedOrgaShooter LeggedOrgaShooter Subber recycler Shielder Thumper PhazerShooter AlienQueen AlienEgg AlienAnt AlienSpider AlienWasp AlienWorm Me Mine Barrier Wreck Ruin BlueFlag RedFlag GreenFlag YellowFlag VioletFlag WayPoint EnergySpot TitaniumSpot UraniumSpot
syn keyword CbotBots radar radarall search direction distance distance2d wait move turn goto motor jet message retobject errmode abstime pendown penup pencolor penwidth canresearch reserched
syn keyword CbotTopo space flatspace topo flatground 
syn keyword CbotRobots grab drop sniff thump recycle shield fire aim bulid canbulid buldingenabled
syn keyword CbotObjects factory takeoff busy
syn keyword CbotExchange receive send testinfo deleteinfo
syn keyword CbotClasses class public private protected static synchronized new this extends super
syn keyword CbotString strlen strleft stright strmid strfind strval strupper strlower
syn keyword CbotFiles open close writeln readln eof deletefile
syn keyword cRepeat try catch
syn keyword CbotError CBOTDEBUGDD


if version >= 508 || !exists("did_xxd_syntax_inits")
  if version < 508
    let did_xxd_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

 HiLink CbotType	Type
 HiLink CbotStatement 	Underlined
 HiLink CbotBots 	String
 HiLink CbotTopo	Function
 HiLink CbotRobots	Special	
 HiLink CbotObjects	Statement
 HiLink CbotExchange	Special	
 HiLink CbotClasses	Function
 HiLink CbotString	String	
 HiLink CbotFiles	Special
 HiLink CbotError	Error

 delcommand HiLink
endif
