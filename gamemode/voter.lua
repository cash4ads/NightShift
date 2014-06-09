local votetable = {}
local lockToOneVote = false
local lockChoices
myVote = ""
function increment ( string vote, messages)
	returnstring = ""
	if lockToOneVote then
		votetable[myVote] = votetable[myVote] - 1
		returnstring = "player removed their vote from " .. vote.. "and  "
	end 

 
	if votetable[vote] = nil then
		if lockChoices ~= true then
			votetable[vote] = 1
			returnstring = returnstring .. "Added vote to new choice " .. vote 
		else
			returnstring = returnstring .. " could not enter your new vote because the current choices are locked."
		end
	else
		votetable[vote] = votetable[vote] + 1
		returnstring = returnstring .. "Added vote to " .. vote 
	end 

	if messages then 
		return returnstring
	end 

end 

function returnVote ()
	votetable[myVote] = votetable[myVote] - 1
	return "vote " .. myVote.. " was decremented. Your vote has been removed."
end

function createVoteTXT()
	file.Write(gmod.GetGamemode().Name .."/Votes/".. string.gsub(self:SteamID(), ":", "_") ..".txt", "Current Voting Status, last requested by " ..self:SteamID().. " at " .. os.date( "%a, %I:%M:%S %p" ).. \n .. #votetable  )
end 

function showVote()
	if lockedToOneChoice then
		return "your last vote was for ".. myVote
	end
end