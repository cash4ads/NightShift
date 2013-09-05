GM.Name    = "NightShift"
GM.Author  = "cash4ads"
GM.Email   = "contact@cash4ads.biz"
GM.Website = "cash4ads.biz"

DeriveGamemode("base") -- if we wanted the spawn menu and toolgun, we'd derive from sandbox

--[[ Teams! A few things to note:
TEAM_NAME is the team global. We can use this to refer to each team in the code.
Colors are RGBA - red, green, blue, and alpha, where alpha is opacity / transparency. This is usually 255 (fully opaque).
This is opposed to Vector colors, which are made up of 3 numbers from 0 to 1, where 1 is 255 and 0 is 0
]]--
TEAM_SCIENCE = team.SetUp(1, "Scientist", Color(80, 153, 0, 255))
TEAM_SECURITY = team.SetUp(2, "Security", Color(0, 36, 179, 255))
TEAM_INFILTRATOR = team.SetUp(3, "Infiltrator", Color(30, 30, 30, 255))