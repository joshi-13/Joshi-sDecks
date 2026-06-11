SMODS.Back {
    key = "joker",
    order = 2750,
    unlocked = true,
    discovered = true,
    atlas = "placeholders",
    pos = { x = 5, y = 3 },
    config = { joker_rate = 100, planet_rate = 0, tarrot_rate = 0, spectral_rate = 0, playing_card_rate = 0,
        banned_keys = {
            "v_hone",
            "v_glow_up",
            "v_omen_globe",
            "v_telescope",
            "v_observatory",
            "v_tarot_merchant",
            "v_tarot_tycoon",
            "v_planet_merchant",
            "v_planet_tycoon",
            "v_magic_trick",
            "v_illusion",

            "p_arcana_normal_1",
            "p_arcana_normal_2",
            "p_arcana_normal_3",
            "p_arcana_normal_4",
            "p_arcana_jumbo_1",
            "p_arcana_jumbo_2",
            "p_arcana_mega_1",
            "p_arcana_mega_2",

            "p_celestial_normal_1",
            "p_celestial_normal_2",
            "p_celestial_normal_3",
            "p_celestial_normal_4",
            "p_celestial_jumbo_1",
            "p_celestial_jumbo_2",
            "p_celestial_mega_1",
            "p_celestial_mega_2",

            "p_spectral_normal_1",
            "p_spectral_normal_2",
            "p_spectral_jumbo_1",
            "p_spectral_mega_1",

            "p_standard_normal_1",
            "p_standard_normal_2",
            "p_standard_normal_3",
            "p_standard_normal_4",
            "p_standard_jumbo_1",
            "p_standard_jumbo_2",
            "p_standard_mega_1",
            "p_standard_mega_2",
        }
    },
    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.spectral_rate } }
    end,
    apply = function(self, back)
        G.GAME.joker_rate = self.config.joker_rate
        G.GAME.planet_rate = self.config.planet_rate
        G.GAME.tarrot_rate = self.config.tarrot_rate
        G.GAME.spectral_rate = self.config.spectral_rate
        G.GAME.playing_card_rate = self.config.playing_card_rate
        for _, banned_key in pairs(self.config.banned_keys) do
            G.GAME.banned_keys[banned_key] = true
        end
    end,
}



SMODS.Back {
    key = "tarrot",
    order = 2751,
    unlocked = true,
    discovered = true,
    atlas = "placeholders",
    pos = { x = 0, y = 3 },
    config = { joker_rate = 0, planet_rate = 0, tarrot_rate = 100, spectral_rate = 0, playing_card_rate = 0,
        banned_keys = {
            "v_hone",
            "v_glow_up",
            "v_omen_globe",
            "v_telescope",
            "v_observatory",
            "v_tarot_merchant",
            "v_tarot_tycoon",
            "v_planet_merchant",
            "v_planet_tycoon",
            "v_magic_trick",
            "v_illusion",

            "p_buffoon_normal_1",
            "p_buffoon_normal_2",
            "p_buffoon_jumbo_1",
            "p_buffoon_mega_1",

            "p_celestial_normal_1",
            "p_celestial_normal_2",
            "p_celestial_normal_3",
            "p_celestial_normal_4",
            "p_celestial_jumbo_1",
            "p_celestial_jumbo_2",
            "p_celestial_mega_1",
            "p_celestial_mega_2",

            "p_spectral_normal_1",
            "p_spectral_normal_2",
            "p_spectral_jumbo_1",
            "p_spectral_mega_1",

            "p_standard_normal_1",
            "p_standard_normal_2",
            "p_standard_normal_3",
            "p_standard_normal_4",
            "p_standard_jumbo_1",
            "p_standard_jumbo_2",
            "p_standard_mega_1",
            "p_standard_mega_2",
        }
    },
    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.spectral_rate } }
    end,
    apply = function(self, back)
        G.GAME.joker_rate = self.config.joker_rate
        G.GAME.planet_rate = self.config.planet_rate
        G.GAME.tarrot_rate = self.config.tarrot_rate
        G.GAME.spectral_rate = self.config.spectral_rate
        G.GAME.playing_card_rate = self.config.playing_card_rate
        for _, banned_key in pairs(self.config.banned_keys) do
            G.GAME.banned_keys[banned_key] = true
        end
    end,
}

SMODS.Back {
    key = "spectral",
    order = 2752,
    unlocked = true,
    discovered = true,
    atlas = "placeholders",
    pos = { x = 6, y = 2 },
    config = { joker_rate = 0, planet_rate = 0, tarrot_rate = 0, spectral_rate = 100, playing_card_rate = 0,
        banned_keys = {
            "v_hone",
            "v_glow_up",
            "v_omen_globe",
            "v_telescope",
            "v_observatory",
            "v_tarot_merchant",
            "v_tarot_tycoon",
            "v_planet_merchant",
            "v_planet_tycoon",
            "v_magic_trick",
            "v_illusion",

            "p_arcana_normal_1",
            "p_arcana_normal_2",
            "p_arcana_normal_3",
            "p_arcana_normal_4",
            "p_arcana_jumbo_1",
            "p_arcana_jumbo_2",
            "p_arcana_mega_1",
            "p_arcana_mega_2",

            "p_buffoon_normal_1",
            "p_buffoon_normal_2",
            "p_buffoon_jumbo_1",
            "p_buffoon_mega_1",

            "p_celestial_normal_1",
            "p_celestial_normal_2",
            "p_celestial_normal_3",
            "p_celestial_normal_4",
            "p_celestial_jumbo_1",
            "p_celestial_jumbo_2",
            "p_celestial_mega_1",
            "p_celestial_mega_2",

            "p_standard_normal_1",
            "p_standard_normal_2",
            "p_standard_normal_3",
            "p_standard_normal_4",
            "p_standard_jumbo_1",
            "p_standard_jumbo_2",
            "p_standard_mega_1",
            "p_standard_mega_2",
        }
    },
    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.spectral_rate } }
    end,
    apply = function(self, back)
        G.GAME.joker_rate = self.config.joker_rate
        G.GAME.planet_rate = self.config.planet_rate
        G.GAME.tarrot_rate = self.config.tarrot_rate
        G.GAME.spectral_rate = self.config.spectral_rate
        G.GAME.playing_card_rate = self.config.playing_card_rate
        for _, banned_key in pairs(self.config.banned_keys) do
            G.GAME.banned_keys[banned_key] = true
        end
    end,
}

SMODS.Back {
    key = "cards",
    order = 2753,
    unlocked = true,
    discovered = true,
    atlas = "placeholders",
    pos = { x = 3, y = 1 },
    config = { joker_rate = 0, planet_rate = 0, tarrot_rate = 0, spectral_rate = 0, playing_card_rate = 100,
        banned_keys = {
            "v_hone",
            "v_glow_up",
            "v_omen_globe",
            "v_telescope",
            "v_observatory",
            "v_tarot_merchant",
            "v_tarot_tycoon",
            "v_planet_merchant",
            "v_planet_tycoon",

            "p_arcana_normal_1",
            "p_arcana_normal_2",
            "p_arcana_normal_3",
            "p_arcana_normal_4",
            "p_arcana_jumbo_1",
            "p_arcana_jumbo_2",
            "p_arcana_mega_1",
            "p_arcana_mega_2",

            "p_buffoon_normal_1",
            "p_buffoon_normal_2",
            "p_buffoon_jumbo_1",
            "p_buffoon_mega_1",

            "p_celestial_normal_1",
            "p_celestial_normal_2",
            "p_celestial_normal_3",
            "p_celestial_normal_4",
            "p_celestial_jumbo_1",
            "p_celestial_jumbo_2",
            "p_celestial_mega_1",
            "p_celestial_mega_2",

            "p_spectral_normal_1",
            "p_spectral_normal_2",
            "p_spectral_jumbo_1",
            "p_spectral_mega_1",

        }, vouchers =  {
            "v_magic_trick",
            "v_illusion", 
        }

    },

    loc_vars = function(self, info_queue, back)
        return { vars = 
                { self.config.spectral_rate },
                localize { type = 'name_text', key = self.config.vouchers[0], set = 'Voucher' },
                localize { type = 'name_text', key = self.config.vouchers[1], set = 'Voucher' },
             }
    end,
    apply = function(self, back)
        G.GAME.joker_rate = self.config.joker_rate
        G.GAME.planet_rate = self.config.planet_rate
        G.GAME.tarrot_rate = self.config.tarrot_rate
        G.GAME.spectral_rate = self.config.spectral_rate
        G.GAME.playing_card_rate = self.config.playing_card_rate
        for _, banned_key in pairs(self.config.banned_keys) do
            G.GAME.banned_keys[banned_key] = true
        end
    end,
}
