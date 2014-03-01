--to do: figure out how to use GetPlayers table
--write checkScience & getSciencePlayers to somehow get data from hammer
--weapons
--voting (get from Marcus)
--hooks!
--also look into what switch systems lua has
local sciencePoints = 0
local runOne = 0
local runTwo = 0
local jumpOne = 0
local jumpTwo = 0
--the following will add the file to the program, letting us use the functions in that file
--will the gamemode run if I make a weird folder?
--a question for another time
local techResults = require("techtree.techResults")

function scienceStart()
  timer.Create( "PointsCheck", 1, 0, scienceIncrease )
end
  
function scienceIncrease()
  if checkScience() == true then
    sciencePoints = getSciencePlayers() * 1
end

-- function voteResults( results )
--   if results == "RunOne" && sciencePoints >= 250 then
--     upgradeRunOne()
--   elseif results == "RunTwo" && runOne == 1 && sciencePoints >= 500 then
--     upgradeRunTwo()
--   elseif results == "JumpOne" && sciencePoints >= 250 then
--     upgradeJumpOne()
--   elseif results == "JumpTwo" && jumpOne == 1 && sciencePoints >= 500 then
--     upgradeJumpTwo()
--   elseif results == "Stealth" && sciencePoints >= 1000 then
--     upgradeStealth()
--   end
-- end

switch = {
  "RunOne" = techResults.upgradeRunOne(),
  "RunTwo" = techResults.upgradeRunTwo(),
  "JumpOne" = techResults.upgradeJumpOne(),
  "JumpTwo" = techResults.upgradeJumpTwo(),
  "Stealth" = techResults.upgradeStealth()
}
function voteResults( results )
  if switch[results] then 
    switch[results]()
  end
end