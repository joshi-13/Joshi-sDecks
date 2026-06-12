local function legendary_deck_active()
    return G.GAME
        and G.GAME.selected_back
        and G.GAME.selected_back.effect
        and G.GAME.selected_back.effect.center
        and G.GAME.selected_back.effect.center.key == "b_JoDe_legendary"
end


local old_showman = SMODS.showman
SMODS.showman = function(...)
    if legendary_deck_active() then
        return true
    end

    return old_showman(...)
end

local function apply_legendary_state()
    SMODS.ObjectTypes["Joker"].rarities[4].weight = 100
end

local function restore_state()
    SMODS.ObjectTypes["Joker"].rarities[4].weight = 0
end

local old_game_start_run = G.start_run

function G:start_run(args)
    old_game_start_run(self, args)

    if legendary_deck_active() then
        apply_legendary_state()
    else
        restore_state()
    end
end

SMODS.Back {
    key = "legendary",
    unlocked = true,
    discovered = true,
    atlas = "rarity",
    pos = { x = 1, y = 1 },
    config = { common_chance = 0, uncommon_chance = 0, rare_chance = 0,
        banned_keys = {
            "c_wraith",

            "tag_top_up",
            "tag_uncommon",
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
