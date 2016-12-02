" Vim syntax file
" Language:     CBOT
" Maintainer:   Kompowiec2 <diasp@o2.pl>
" Filenames:    *.cbot
" URL:		      http://www.kompowiec.github.io/
" Created:      2015 August 28
" Last Change:  2016 November 29
" Revision:     1.2

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
syntax keyword CbotType point object produce 
syn keyword CbotStatement Houston SpaceShip BotFactory ResearchCenter RadarStation ExchangePost RepairCenter DefenseTower AutoLab PowerStation PowerPlant [Research]NuclearPlant Converter Derrick PowerCaptor Vault StartArea GoalArea AlienNest TitaniumOre UraniumOre Titanium PowerCell NuclearCell OrgaMatter BlackBox TNT KeyA KeyB KeyC KeyD PracticeBot TargetBot TrackedGrabber WheeledGrabber WingedGrabber LeggedGrabber WheeledSniffer TrackedSniffer WingedSniffer LeggedSniffer WheeledShooter TrackedShooter WingedShooter LeggedShooter WheeledOrgaShooter TackedOrgaShooter WingedOrgaShooter LeggedOrgaShooter [Research]Subber recycler [Research]Shielder [Research]Thumper [Research]PhazerShooter AlienQueen AlienEgg AlienAnt AlienSpider AlienWasp AlienWorm Me Mine Barrier Wreck Ruin BlueFlag RedFlag GreenFlag YellowFlag VioletFlag WayPoint TitaniumSpot UraniumSpot ResearchOrgaShooter ResearchLegged ResearchTracked ResearchWinged ResearchShooter ResearchDefenseTower
syn keyword CbotBots detect radar radarall search direction distance distance2d wait move turn goto motor jet message retobject errmode abstime pendown penup pencolor penwidth canresearch researched
syn keyword CbotTopo space flatspace topo flatground 
syn keyword CbotRobots grab drop sniff thump shield fire aim bulid canbulid buldingenabled
syn keyword CbotObjects factory takeoff busy
syn keyword CbotExchange receive send testinfo deleteinfo
syn keyword CbotClasses class public private protected static synchronized new extends extern
syn keyword CbotOther this super
syn keyword CbotStr strlen strleft strright strmid strfind strval strupper strlower
syn keyword CbotFiles open close writeln readln eof deletefile
syn keyword cRepeat try catch
syn keyword CbotError CBOTDEBUGDD .bmp
"Help files
"syn match HelpImg /\image;*/
"syn match HelpMono /\c;*/
"syn match HelpHeading /\b;*/
"syn match HelpYellow /\t;*/
"syn match HelpOrange /\s;*/
"syn match HelpSpecial /\tab;*/ " OK
"syn match HelpLink /\l;/
"syn match HelpU /\u;/
"syn match HelpN /\n;/
"syn keyword Scene Resume.[A-Z] ScriptName.[A-Z] ScriptName.[A-Z] Instructions Satelite Loading Soluce Help Ending Audio Ambient Color FogColor VehicleColor DeepView FogStart SecondTexture FrontsizeName Background TerrainGenerate TerrainWind TerrainRelief TerrainResource TerrainWater TerrainCloud TerrainMaterial TerrainInit TerrainLevel TerrainCrate BeginObject Create Object WaterColor MapColor MapZoom EnableResearch EndMissionTake Camera
"syn keyword SceneMath pos dist type lost min lookat eye daly dir color id max slope freq image up down level vision depth rank air track water win lost text immediat reset option

if version >= 508 || !exists("did_xxd_syntax_inits")
  if version < 508
    let did_xxd_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"CBOT
 HiLink CbotType         	Type
 HiLink CbotStatement      Underlined
 HiLink CbotBots         	Typedef
 HiLink CbotTopo        	Typedef
 HiLink CbotRobots      	Typedef	
 HiLink CbotObjects	      Typedef
 HiLink CbotExchange    	Typedef	
 HiLink CbotClasses	      Function
 HiLink CbotStr	        	Typedef
 HiLink CbotFiles	        Typedef
 HiLink CbotError	         Error
 HiLink CbotOther       	PreProc
"Help
" HliLink HelpImg         TODO 
" HliLink HelpMono        TODO
" HliLink HelpYellow      TODO
" HliLink HelpOrange      TODO
" HliLink HelpSpecia      TODO
" HliLink HelpLink        TODO
" HliLink HelpU           TODO
" HliLink HelpN           TODO
"Scene
" HiLink Scene             TODO 
" HiLink SceneMath         TODO
 delcommand HiLink
endif
