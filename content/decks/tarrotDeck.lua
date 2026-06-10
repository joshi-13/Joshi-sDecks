SMODS.Back {
    key = "tarrot",
    pos = { x = 0, y = 0 },
    config = { discards = 1 },
    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.discards } }
    end,
    -- The config field already handles the functionality so it doesn't need to be implemented
    -- The following is how the implementation would be
    --[[
    apply = function(self, back)
        G.GAME.starting_params.discards = G.GAME.starting_params.discards + self.config.discards
    end
    ]]
}
