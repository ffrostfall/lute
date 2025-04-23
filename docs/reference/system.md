# system

The system library provides information about the device^1 running Lute. This information is retrieved at runtime, not during compile time, so it will work with odd scenarios^3. For example, if Lute is being ran on an ARM device running via an x86 interpreter, `system.arch` will properly return ARM^4.

## arch

The CPU architecture on the device being used to run Lute^5.

## cpus
```luau
() -> { CpuInfo }
```
CPU hardware information. `#system.cpus()` should not be used for any kind of parallelization, as it is not the number of available threads, but rather the number of hardware cores.

## os
```luau
string
```
The operating system.

## threadcount
```luau
() -> number
```
The # of threads available to Lute.
