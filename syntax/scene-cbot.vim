" Vim syntax file
" Language:     CBOT
" Maintainer:   Kompowiec2 <diasp@o2.pl>
" Filenames:    none (activate manual)
" URL:		      http://www.kompowiec.github.io/
" Created:      2017 January 05
" Revision:     1.0

if !exists("main_syntax")
if version < 600
syntax clear
elseif exists("b:current_syntax")
finish
endif

syntax case match

"Scene files TODO
syn keyword Scene Resume.[A-Z] ScriptName.[A-Z] ScriptName.[A-Z] Instructions Satelite Loading Soluce Help Ending Audio Ambient Color FogColor VehicleColor DeepView FogStart SecondTexture FrontsizeName Background TerrainGenerate TerrainWind TerrainRelief TerrainResource TerrainWater TerrainCloud TerrainMaterial TerrainInit TerrainLevel TerrainCrate BeginObject Create Object WaterColor MapColor MapZoom EnableResearch EndMissionTake Camera
syn keyword SceneMath pos dist type lost min lookat eye daly dir color id max slope freq image up down level vision depth rank air track water win lost text immediat reset option

 HiLink Scene             TODO 
 HiLink SceneMath         float
 delcommand HiLink
endif
