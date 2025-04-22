local any: any = nil

export type CpuInfo = {
	speed: number,
	timings: {},
}

local function cpus(): { CpuInfo }
	return any
end

local function threadcount(): number
	return any
end

return {
	threadcount = threadcount,
	cpus = cpus,

	os = any :: string,
	arch = any :: string,
}
