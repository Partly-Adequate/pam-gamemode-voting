hook.Add("PAM_RegisterVoteTypes", "GamemodeVoteType",
    function()
        PAM.RegisterVoteType("gamemode",
            function(option)
                PAM.ChangeGamemode(option)
                PAM.Cancel()
                PAM.Start("map")
            end
        )
    end
)
