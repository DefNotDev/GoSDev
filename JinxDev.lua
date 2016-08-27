require("OpenPredict")

if GetObjectName(GetMyHero()) ~= "Jinx" then return end

local JinxMenu = Menu("Jinx", "Jinx by DefNotDev")

JinxMenu:SubMenu("Combo", "Combo")
JinxMenu.Combo:Boolean("Q", "Use Q", true)
JinxMenu.Combo:Boolean("W", "Use w", true)
JinxMenu.Combo:Boolean("E", "Use E", true)
JinxMenu.Combo:Boolean("R", "Use R", true)



