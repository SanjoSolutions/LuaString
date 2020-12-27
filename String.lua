local function startsWith(string, startingWithString)
    return string.sub(string, 1, string.len(startingWithString)) == startingWithString
end

String = {
    startsWith = startsWith
}
