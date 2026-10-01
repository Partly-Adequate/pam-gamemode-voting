local name = "gamemode_option"
PAM_EXTENSION.name = name
PAM_EXTENSION.enabled = true

function PAM_EXTENSION:RegisterSpecialOptions()
	if PAM.vote_type == "gamemode" then return end

	PAM.RegisterOption("change_gamemode", function()
		PAM.Cancel()
		PAM.Start("gamemode")
	end)
end
