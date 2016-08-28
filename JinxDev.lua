--If my hero is Jinx, return. Else, not return any.
if GetObjectName(GetMyHero()) ~= "Jinx" then return end

require("OpenPredict")


--Menu
local JinxMenu = Menu("Jinx", "Jinx")
JinxMenu:SubMenu("Combo", "Combo")
JinxMenu.Combo:Boolean("Q", "Use Q on Combo", true)
JinxMenu.Combo:Boolean("W", "Use W on Combo", true)
JinxMenu.Combo:Boolean("E", "Use E on Combo", true)
JinxMenu.Combo:Boolean("R", "Use R on Combo", true)

--Informations
local W = {delay = 600, speed = 3300, range = GetCastRange(myHero,_W)}
local R = {delay = 600, speed = 1700, range = GetCastRange(myHero,_R)}


--Target declaration
local target = GetCurrentTarget()



--Function
function JinxCombo()
if IOW:Mode() == "Combo" then

if JinxMenu.Combo.Q:Value() and Ready(_Q) and ValidTarget(target, 1000)
CastSpell(_Q)

