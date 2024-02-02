-- Quick Save Hotkey
-- Pressing Hotkey 10 (default: T) will save your game
SAVE_HOTKEY = 10
TICKS_WAIT = 30

Triggers = {}

function Triggers.init(restoring_game)
	print("my cool script loaded")
	last_saved = Game.ticks
end

function Triggers.idle()
	for p in Players() do
		if (last_saved + TICKS_WAIT) < Game.ticks and p.hotkey == SAVE_HOTKEY and not p.dead then
			print("Entered conditional")
			Game.save()
			last_saved = Game.ticks
		end
	end
end
