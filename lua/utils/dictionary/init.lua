return {
	combine = function(...)
		local new_dict = {}
		for k, v in pairs({ ... }) do
			new_dict[k] = v
		end
		return new_dict
	end,
}
