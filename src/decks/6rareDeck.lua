SMODS.Back {
    key = "rare",
    unlocked = true,
    discovered = true,
    atlas = "rarity",
    pos = { x = 0, y = 0 },
    config = { common_chance = 0, uncommon_chance = 0, rare_chance = 1,
        banned_keys = {
            "tag_top_up",
            "tag_uncommon",
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
