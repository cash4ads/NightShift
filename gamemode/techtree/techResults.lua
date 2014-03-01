
--remember: don't leave values! They are placeholders!
--look up HL2 hammer units!
function upgradeRunOne()
  if sciencePoints >= 250
    upgradeRun(125)
    sciencePoints = sciencePoints - 250
    runOne = 1
  end
end

function upgradeRunTwo()
  if sciencePoints >= 500
    upgradeRun(150)
    sciencePoints = sciencePoints - 500
    runTwo = 1
  end
end

function upgradeJumpOne()
  if sciencePoints >= 250
    upgradeJump(125)
    sciencePoints = sciencePoints - 250
    jumpOne = 1
  end
end

function upgradeJumpTwo()
  if sciencePoints >= 500
    upgradeJump(150)
    sciencePoints = sciencePoints - 500
    jumpTwo = 1
  end
end

function upgradeStealth()
  --changes opacity of the team
  --too broken?
  --good practice to mess with players
  --probably remove later
end

--returns table value
-- function upgradeRun( upgade )
--   team.GetPlayers( number teamIndex )
-- end

--repeat for jump, etc.