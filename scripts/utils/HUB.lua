local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "CHT HUB",
   Icon = 87290230760754, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "CHT HUB hân hạnh chào đón",
   LoadingSubtitle = "Tham gia Discord tại: bio.link/moondiscord",
   Image = "87290230760754",
   Theme = "Amethyst", 

   DisableRayfieldPrompts = true,
   DisableBuildWarnings = true, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = ""
   },

   Discord = {
      Enabled = true, 
      Invite = "UWN2m9bpXn", 
      RememberJoins = true -
   },

   KeySystem = false, 
   KeySettings = {}
})

Rayfield:LoadConfiguration()