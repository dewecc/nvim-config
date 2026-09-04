local dictionary = require("utils.dictionary")

local load_modules = function(path)
	local tables = {}

	local cur_dir = vim.fs.dirname(debug.getinfo(1, "S").source:sub(2))
	local abs = vim.fs.joinpath(cur_dir, path)

	for name, type in vim.fs.dir(abs) do
		local file_path = vim.fs.joinpath(abs, name)

		local status, result = pcall(function()
			local chunk, err = loadfile(file_path)
			if not chunk then
				error(err)
			end
			return chunk()
		end)

		if not status then
			vim.notify("Failed to load " .. file_path .. " due to " .. tostring(result))
		else
			table.insert(tables, result)
		end
	end
	return tables
end

local load_multi_modules = function(...)
	local tables = {}
	for i, path in ipairs({ ... }) do
		local tbl = load_modules(path)
		for _, v in ipairs(tbl) do
			table.insert(tables, v)
		end
	end
	return tables
end

-- Load all servers

local servers = load_multi_modules("servers/lang", "servers/tools", "servers/web")

vim.notify("Servers found: " .. #servers)

for i, v in ipairs(servers) do
	vim.lsp.enable(v.name)
	if v.config and vim.tbl_count(v.config) > 0 then
		vim.lsp.config(v.name, v.config)
	end
end

-- Initialize formatters

local status, conform = pcall(function()
	return require("conform")
end)

if not status then
	vim.notify("Failed to locate conform package for lsp formatting!")
else
	local formatters = load_multi_modules("formatters")

	vim.notify("Formatters found: " .. #formatters)

	local format_config = {}

	for i, v in ipairs(formatters) do
		format_config[v.lang] = {
			v.formatter,
		}
	end

	conform.setup({
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
		formatters_by_ft = format_config,
	})
end

return {}
