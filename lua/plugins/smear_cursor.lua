return {
	'sphamba/smear-cursor.nvim',

	opts = {
		smear_between_buffers = true,
		smear_between_neighbor_lines = true,
		scroll_buffer_space = true,
		legacy_computing_symbols_support = true,
		smear_insert_mode = true,

		-- smear configuration
		stiffness = 0.7,
		trailing_stiffness = 0.3,
		stiffness_insert_mode = 0.7,
		damping = 0.75,
		damping_insert_mode = 0.7,
		distance_stop_animating = 0.05,
	}
}
