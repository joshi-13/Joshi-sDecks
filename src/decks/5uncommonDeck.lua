SMODS.Back {
    key = "uncommon",
    unlocked = true,
    discovered = true,
    atlas = "placeholders",
    pos = { x = 3, y = 1 },
    config = { common_chance = 0, uncommon_chance = 1, rare_chance = 0,
        banned_keys = {
            "c_wraith",

            "tag_top_up",
            "tag_rare",
        } },
    apply = function(self, back)
        G.GAME.common_mod = self.config.common_chance
        G.GAME.uncommon_mod = self.config.uncommon_chance
        G.GAME.rare_mod = self.config.rare_chance
        for _, banned_key in pairs(self.config.banned_keys) do
            G.GAME.banned_keys[banned_key] = true
        end
    end,
}
