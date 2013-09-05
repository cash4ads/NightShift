-- AddCSLuaFile tells the server to send the file to the client to be run
-- The server doesn't send server-side scripts (like this file)
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")