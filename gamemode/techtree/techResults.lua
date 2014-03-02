
--remember: don't leave values! They are placeholders!
--look up HL2 hammer units!
function upgradeRunOne(teamIndex)
  if sciencePoints >= 250
    upgradeRun(125, teamIndex)
    sciencePoints = sciencePoints - 250
    runOne = 1
  end
end

function upgradeRunTwo(teamIndex)
  if sciencePoints >= 500
    upgradeRun(150, teamIndex)
    sciencePoints = sciencePoints - 500
    runTwo = 1
  end
end

function upgradeJumpOne(teamIndex)
  if sciencePoints >= 250
    upgradeJump(125, teamIndex)
    sciencePoints = sciencePoints - 250
    jumpOne = 1
  end
end

function upgradeJumpTwo(teamIndex)
  if sciencePoints >= 500
    upgradeJump(150, teamIndex)
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
function upgradeRun(upgrade, teamIndex)
  for _,ply in pairs(team.GetPlayers(teamIndex)) do
    ply:SetMaxHealth(upgrade)
  end
end

function upgradeJump(upgrade, teamIndex)
  for _,ply in pairs(team.GetPlayers(teamIndex)) do
    ply:SetJumpPower(upgrade)
  end
end