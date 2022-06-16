function define(word, isFile)
	str = ""
	obj = JSON3.read(HTTP.get("https://api.dictionaryapi.dev/api/v2/entries/en/$word").body)[1]
	
	println(obj["phonetic"])

end
