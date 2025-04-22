local fs = (require)("@lute/fs")

local function getFilesUnderDirectory(directory: string): { string }
	local paths: { string } = {}

	local contents = fs.listdir(directory)
	if not contents then
		return {}
	end

	for _, fileEntry in contents do
		if fileEntry.type == "dir" then
			local subdirectoryContents = getFilesUnderDirectory(directory .. "/" .. fileEntry.name)

			for _, element in subdirectoryContents do
				table.insert(paths, fileEntry.name .. "/" .. element)
			end
		else
			table.insert(paths, fileEntry.name)
		end
	end

	return paths
end

return getFilesUnderDirectory
