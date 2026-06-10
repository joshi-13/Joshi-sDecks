SMODS.Back {
    key = "tarrot",
    order = 2750,
    unlocked = true,
    discovered = true,
    atlas = "placeholders",
    pos = { x = 0, y = 0 },
    config = { joker_rate = 0, planet_rate = 0, tarrot_rate = 100, spectral_rate = 0, playing_card_rate = 0 },
    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.spectral_rate } }
    end,
    apply = function(self, back)

        G.GAME.joker_rate = self.config.joker_rate
        G.GAME.planet_rate = self.config.planet_rate
        G.GAME.tarrot_rate = self.config.tarrot_rate
        G.GAME.spectral_rate = self.config.spectral_rate
        G.GAME.playing_card_rate = self.config.playing_card_rate
        G.GAME.banned_keys = {
            {id = "v_hone"},
            {id = "v_glow_up"},
            {id = "v_omen_globe"},
            {id = "v_telescope"},
            {id = "v_observatory"},
            {id = "v_tarot_merchant"},
            {id = "v_tarot_tycoon"},
            {id = "v_planet_merchant"},
            {id = "v_planet_tycoon"},
            {id = "v_magic_trick"},
            {id = "v_illusion"}
        }

    end,
}
