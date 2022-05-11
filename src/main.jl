import JSON3, HTTP
MWD = @__DIR__
include("$MWD/modules/define.jl")
#=
Defaults:
Print first 20 lines of output
Prints to standard output

LIST OF SWITCHES:
-a : print all output
-f : write output to txt file
-s : only print words that start with the string following this switch
-e : -s but for the end
-i : only print words that include the following string
-d : incompatible with -a, -s, -i , and -e, prints the definition of word following switch
=#

switchList = Dict{String, Int64}()
println(switchList)
println(ARGS)

c = 0
for i in ARGS
	global c += 1
	if occursin("-", i)
		println(i)
		switchList[last(i, 1)] = c
	end
end

println(switchList)



if occursin("d", join(switchList))
	if occursin("f", join(switchList))
		define(ARGS[switchList["d"] + 1], true)
	else
		define(ARGS[switchList["d"] + 1], false)
	end
else
	println("Does Not Occur")
end

