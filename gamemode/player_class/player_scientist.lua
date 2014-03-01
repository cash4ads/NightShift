DEFINE_BASECLASS( "player_scientist" )

local PLAYER = {} 

--
-- See gamemodes/base/player_class/player_default.lua for all overridable variables
--
PLAYER.WalkSpeed 			= 200
PLAYER.RunSpeed				= 400


function PLAYER:Loadout()
	self.Player:RemoveAllAmmo()
end

player_manager.RegisterClass( "player_custom", PLAYER, "player_scientist" )