local any: any = nil :: any

local function compile(source): CompilerResult
	return any
end

local function load(compiledLuau: CompilerResult): () -> unknown
	return any
end

return {
	compile = compile,
	load = load,
}
