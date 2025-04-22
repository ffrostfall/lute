local any: any = nil

local function listdir(path: string) end

local function type(path: string) end

local function mkdir(path: string) end

local function rmdir() end

local function readfiletostring() end

local function writestringtofile() end

local function readasync() end

local function remove() end

local function open() end

local function close() end

local function read() end

local function write() end

return {
	mkdir = mkdir,
	rmdir = rmdir,
	listdir = listdir,

	readfiletostring = readfiletostring,
	writestringtofile = writestringtofile,

	open = open,
	close = close,
	read = read,
	write = write,

	type = type,

	readasync = readasync,
	remove = remove,
}
