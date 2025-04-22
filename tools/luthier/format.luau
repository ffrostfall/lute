local process = (require)("@lute/process")
local getFilesUnderDirectory = require("./utils/getFilesUnderDirectory")

local function isSuffixedWith(str: string, suffix: string): boolean
	return string.sub(str, -#suffix) == suffix
end

local function isPathInExternOrBuild(path: string): boolean
	-- substring match it
	if string.find(path, "build") then
		return true
	end

	if string.find(path, "extern") then
		return true
	end

	return false
end

local function getSources()
	local paths = getFilesUnderDirectory("./")
	print(#paths)

	-- reverse iter for removal
	for i = #paths, 1, -1 do
		local path = paths[i]
		if isPathInExternOrBuild(path) then
			table.remove(paths, i)
			continue
		end

		if not (isSuffixedWith(path, "cpp") or isSuffixedWith(path, "h")) then
			table.remove(paths, i)
			continue
		end
	end

	return paths
end

local function formatFile(path: string)
	process.create({ "clang-format", "-i", path })
end

local function format()
	for _, file in getSources() do
		formatFile(file)
	end
end

format()

return format
