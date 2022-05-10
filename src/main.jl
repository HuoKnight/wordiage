import JSON, HTTP

#=
Defaults:
Print first 20 lines of output
Prints to standard output

LIST OF SWITCHES:
-a : print all output
-f : write output to txt file

=#

switchList = Dict{Int64, String}()
println(switchList)
println(ARGS)

c = 0
for i in ARGS
	if occursin("-", i)
		global c += 1
		println(i)
		switchList[c] = last(i, 1)
	end
end

println(switchList)

